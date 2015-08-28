docker_service 'default' do
  action [:create, :start]
end

# Pull docker image
docker_image node[:virtuoso][:docker_image] do
	tag node[:virtuoso][:docker_image_tag]
	action :pull
	notifies :redeploy, "docker_container[virtuoso]", :immediately
end

# Cread volumens directory
directory node[:virtuoso][:data_path] do
	recursive true
	action :create
end

# Run the docker container
docker_container "virtuoso" do
	image "#{node[:virtuoso][:docker_image]}"
	tag "#{node[:virtuoso][:docker_image_tag]}"
	container_name node[:virtuoso][:docker_container]
	detach true
	port ['8890:8890', '1111:1111']
	env [
		"DBA_PASSWORD=#{node[:virtuoso][:config][:dba_password]}",
		"SPARQL_UPDATE=#{node[:virtuoso][:config][:sparql_update]}"
	]
	volumes [
		"#{node[:virtuoso][:data_path]}:#{node[:virtuoso][:container_data_path]}"
	]
	restart_policy 'always'
end
