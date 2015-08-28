# virtuoso-docker-cookbook

Installs and configures Virtuoso as a Docker container

## Supported Platforms

Platforms that support docker

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['virtuoso']['docker_image']</tt></td>
    <td>String</td>
    <td>The docker image of virtuoso that you want to use</td>
    <td><tt>tenforce/virtuoso</tt></td>
  </tr>
  <tr>
    <td><tt>['virtuoso']['docker_image_tag']</tt></td>
    <td>String</td>
    <td>The specific tag of the docker image to use</td>
    <td><tt>latest</tt></td>
  </tr>
  <tr>
    <td><tt>['virtuoso']['docker_container']</tt></td>
    <td>String</td>
    <td>The name used for the new docker container</td>
    <td><tt>virtuoso</tt></td>
  </tr>
  <tr>
    <td><tt>['virtuoso']['data_path']</tt></td>
    <td>String</td>
    <td>The path to use as docker volume for data files</td>
    <td><tt>/var/data/virtuoso</tt></td>
  </tr>
  <tr>
    <td><tt>['virtuoso']['config']['dba_password']</tt></td>
    <td>String</td>
    <td>The password for the `dba` user</td>
    <td><tt>dba</tt></td>
  </tr>
  <tr>
    <td><tt>['virtuoso']['config']['sparql_update']</tt></td>
    <td>String</td>
    <td>Whether SPARQL updates are allowed</td>
    <td><tt>true</tt></td>
  </tr>
</table>


## Usage

### neo4j-docker::default

Include `neo4j-docker` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[neo4j-docker]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request
