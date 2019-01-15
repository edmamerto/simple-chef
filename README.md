# Simple Chef
> This is a simple chef example to get you started with chef right away


**In this project you will:**
 - Define a user and home directory 
 - Generate an SSH key and place it in the appropriate path

 Check out >>> [user.rb](https://github.com/edmamerto/simple-chef/blob/master/recipe/user.rb)

For this purpose, I used a virtual workstation that I setup with vagrant and virtualbox.

![simple chef architecture](simple-chef.png)

## Installation
You need `chefDK` and `vagrant` 

ChefDK (install on node, see next section) 
- https://docs.chef.io/install_dk.html

Vagrant
- https://www.vagrantup.com/docs/installation/


## Development setup

Bring up node (ubuntu in this example)

```bash
$ vagrant up
```
Enter node
```bash
$ vagrant ssh
```
Install `chefDK` on node
```bash
$ wget https://packages.chef.io/files/stable/chefdk/3.2.30/ubuntu/18.04/chefdk_3.2.30-1_amd64.deb
$ sudo dpkg -i chefdk_3.2.30-1_amd64.deb
```
run the recipe

*shared/synced folder is already setup in the `vagrantfile`*
```bash
$ sudo chef-client --local-mode /simple-chef/user.rb
```
## notes
recipe could still be refactored to use variables and could have added more properties.