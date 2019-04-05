#### Configuration and chain managemant with packer and ansible

This repo contains 3 ansible playbooks to build the 3 essential images of my sims project[frontend, api_documentation and database]

To use is you must first edit the sample.env by adding your aws access key and aws secret key, then edit the file naming to .env and source it ==> `source .env`.

With this done run the command `packer validate backend.json` to  validate the format of the packer file.

When the validation is successfull , you can now build your aws amis by use of the command ` packer build backend.json`

Since the builder is  a parellel builder. It will run the builds in parallel and in the end show the AIM IDs of the 3 images.
