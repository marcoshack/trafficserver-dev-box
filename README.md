# A Virtual Machine for Apache Traffic Server Development

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

Building the virtual machine is this easy:

    $ git clone https://github.com/marcoshack/trafficserver-dev-box.git
    $ cd trafficserver-dev-box
    $ vagrant up

That's it.

After the installation has finished, you can access the virtual machine with

    $ vagrant ssh
    Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic x86_64)
    ...
    vagrant@ts-dev-box:~$

Port 8080 in the host computer is forwarded to port 8080 in the virtual machine. Thus, applications running in the virtual machine can be accessed via localhost:8080 in the host computer.

## Recommended Workflow

The recommended workflow is

* edit in the host computer and

* test within the virtual machine.

Just clone your Traffic Server repository fork in the home directory of the Traffic Server development box in the host computer:

    $ ls
    README.md   Vagrantfile puppet
    $ git clone git@github.com:<your username>/trafficserver.git

Or if you're only going to test Traffic Server you can use the Apache repository instead of a fork:

    $ git clone git://github.com/apache/trafficserver.git

Vagrant mounts that very directory as _/vagrant_ within the virtual machine:

    vagrant@ts-dev-box:~$ ls /vagrant
    puppet  rails  README.md  Vagrantfile

so we are ready to go to edit in the host, and test in the virtual machine.

This workflow is convenient because in the host computer one normally has his editor of choice fine-tuned, Git configured, and SSH keys in place.

## Virtual Machine Management

When done just log out with `^D` and suspend the virtual machine

    $ vagrant suspend

then, resume to hack again

    $ vagrant resume

Run

    $ vagrant halt

to shutdown the virtual machine, and

    $ vagrant up

to boot it again.

You can find out the state of a virtual machine anytime by invoking

    $ vagrant status

Finally, to completely wipe the virtual machine from the disk **destroying all its contents**:

    $ vagrant destroy # DANGER: all is gone

Please check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) for more information on Vagrant.
