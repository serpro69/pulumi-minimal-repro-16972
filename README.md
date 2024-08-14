Steps:

- clone the repo
- run `pulumi convert --from terraform --language go --out pulumi`

Result:

```
➜ pulumi convert --from terraform --language go --out pulumi
Converting from terraform...
warning: /tmp/tmp.utPaERj4Se/versions.tf:12,1-18: Failed to evaluate provider config; Could not evaluate expression for google:project
warning: /tmp/tmp.utPaERj4Se/service.tf:25,14-33: Function not yet implemented; Function toset not yet implemented
Converting to go...
================================================================================
The Pulumi CLI encountered a code generation error. This is a bug!
We would appreciate a report: https://github.com/pulumi/pulumi/issues/
Please provide all of the below text in your report.
================================================================================
Pulumi Version:   v3.129.0
error: service.pp:0,0-5,2: /tmp/pulumi-convert749565053/project-factory_15.0.1/modules/project_services/outputs.pp:16,19-18,12: the first argument to 'element' must be a list or tuple; ; /tmp/pulumi-convert749565053/project-factory_15.0.1/modules/project_services/outputs.pp:16,19-18,12: the first argument to 'element' must be a list or tuple;
error: could not generate output program
```
