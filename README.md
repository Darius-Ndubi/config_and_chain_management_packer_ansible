 

# Configuration and chain management with packer and ansible

This project entails the use of packer and ansible to automate the creation of Amazon Machine Images for my sims project split into[[Back end](https://github.com/andela/ah-code-titans.git), [Front end](https://github.com/andela/ah-code-titans-frontend.git)]. This configuration breaks the building into three essential images that is: the frontend, the API documentation and the database.


## Getting Started

Clone the [repository](https://github.com/Darius-Ndubi/config_and_chain_management_packer_ansible.git) and cd into `config_and_chain_management_packer_ansible`. To use it you must first edit the sample.env by adding your aws access key and aws secret key, then edit the file naming to `.env` and export the variables to environment via command `source .env`.

Validate the packer file through command `packer validate backend.json`.

When validation is successful and no errors are found in the file you can now build the images via the command `packer build backend.json`.
 This will use the credentials yo provided above and start creating the Amazon Machine Images(AMI)s .

### Prerequisites

Packages or tools needed.
- Ansible -> https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
- Packer -> https://www.packer.io/intro/getting-started/install.html


## Deployment

After running `packer build backend.json` switch to your console on aws and under the EC2 instance tab view the running instances started by packer as it builds the images. When Images have been successfully built and the instances terminated. On the left panel click on AMIs and you will find the three AMIs packer was building stored there.

## Built With

* [Packer](https://www.packer.io/) - Machine Image creation automation tool.
* [Ansible](https://docs.ansible.com/) - An automation platform.


## Authors
 - [Darius Ndubi](https://github.com/Darius-Ndubi)
