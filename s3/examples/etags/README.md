# Etag example:

The purpose of this example is to show how the Etag of an s3 object changes each time there is a change on the content of the s3 object.

So to track the change of the Etag: 
- Apply the terraform plan proposed in this module
- Change the content of the `demo_file.txt` (`Hello World!`->`Hello Friends!`)
- Re-apply the terraform plan and check the output of the command on the `etag` label and you will see that it changed from `abc`->`xyz`