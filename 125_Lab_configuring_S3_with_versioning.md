# Configuring S3 with versioning

### Step 1
* look for "S3" in the menu or search bar > Create Bucket > Name choose a unique name > Next > Remove all marks so the Objects can be public > on "Object Ownership": ACLs enabled > Create Bucket.

### Step 2
- Select the bucket and click "Permissions" on Edit "Access control list (ACL)"
- Make sure "Everyone (public access)" can read the objects.
- Confirm

### Step 3
- Click on the Bucket > Properties > Versioning and Enable Versioning 
- (Notice Versioning cannot be disabled, only suspended)

### Step 4
- Create a .txt file with contents "Hola Estudiantes, This is Version 1" and upload it to the new bucket
- Select the file > Permissions > Access control list (ACL) > edit > allow Everyone (public access) read permissions
- open a private window in your web browser(keep it opened)

### Step 5
- Lets edit the content of the file and change to "Version 2, Upgrade file with better features!"
- Lets re-upload the same file > Try to open the file, (Notice is not public now), lets make it public.

### Step 6
- Open the File to see its content now (Notice only the Newest version is available)
- Let go back to the bucket and Notice 2 Versions
- open the new version in a private window in your web browser and SS both versions

### Cleanup!

- Delete the files and the whole bucket to avoid charges.
> From https://aws.amazon.com/s3/ 