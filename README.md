About
---
This repository contains the scripts to create a custom blender installation
with all the dependencies installed to run the reynolds blender add-on.

Ref
---
See: [reynolds](https://github.com/dmsurti/reynolds) and
[reynolds-blender](https://github.com/dmsurti/reynolds-blender).

Creating a custom blender for Ubuntu
---

Pre-Requisites
===

`OpenFoam` is a pre-requisite that needs to be installed and loaded for the
reynolds blender add-on.

You can check the validity of your OpenFoam install by sourcing the commands as
such:

```
source /opt/openfoam4/etc/bashrc
```

If the above does not report any errors, then your openfoam installation is
valid. Otherwise, you can opt to install openfoam with the provided script.

(Optional) Install openfoam
===

1. Clone this repository.
2. cd ~<path to cloned dir>/linux/ubuntu
3. Run `./openfoam.sh`.

Create custom blender archive
===

1. Clone this repository.
2. cd ~<path to cloned dir>/linux/ubuntu
3. Run `./reynolds-blender.sh`

This creates a blender with the dependencies and addon installed. The packaged
blender directory is placed on `~/Desktop`.

Run packaged blender
===

1. cd `~/Desktop/blender/`.
2. Run `./blender`.
3. In the Blender GUI, under File -> User Preferences -> Add Ons, Select
   `Development` under Categories and enable the OpenFoam add on. 
4. Now under 3DView -> Tools, you will see the Open Foam add on panel. Click
   the `Start OpenFoam` button and if no errors are reported, implies your
   blender with the openfoam add on is installed and working correctly.
5. Enjoy solving the cases with blender!

