# pyPORIS_user
An example of how to use pyPORIS to model your own instruments

Execute:

git submodule update --init --recursive

It will populate pyPORIS folder and the AstroPorisPlayer binaries.

Then simply:

./porispanel.sh example

or, if wantint to sync it with a cosmoSys instance:

./porispanel_csys.sh example

The cosmoSys instance has to be configured by copying pyPORIS/config_rm_enabled.py.example to pyPORIS/config_rm_enabled.py and adding your secrets there.

Happy modeling.

Txinto