# generic-gcp-project

## Variables

<table>
<tr><th>Name</th><th>Description</th><th>Type</th><th>Default</th> <th>Required</th></tr>
<tr>
<td>folder_name</td>
<td>Folder name to place project into</td>
<td>

`string`</td>

<td>

n/a</td>

<td>yes</td>
</tr>
<tr>
<td>project_id</td>
<td>Project id to create with</td>
<td>

`string`</td>

<td>

n/a</td>

<td>yes</td>
</tr>
<tr>
<td>project_name</td>
<td>Project name to create with</td>
<td>

`string`</td>

<td>

n/a</td>

<td>yes</td>
</tr>
<tr>
<td>billing_account</td>
<td></td>
<td>

`string`</td>

<td>

`"01A0CE-A063FD-A3938F"`</td>

<td>no</td>
</tr>
<tr>
<td>enable_app_engine</td>
<td>Enable AppEngine ?</td>
<td>

`bool`</td>

<td>

`true`</td>

<td>no</td>
</tr>
<tr>
<td>organization_id</td>
<td>GCP organization to place project in</td>
<td>

`number`</td>

<td>

`648655515396`</td>

<td>no</td>
</tr>
<tr>
<td>vcs</td>
<td>VCS which will trigger Cloud Build</td>
<td>

`string`</td>

<td>

`""`</td>

<td>no</td>
</tr>
</table>

## Outputs

| Name           | Description |
| -------------- | ----------- |
| project_id     |             |
| project_name   |             |
| project_number |             |
