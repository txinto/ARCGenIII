#!/bin/bash
rm models/$1.ods
rm models/$1.xml
cp pyPORIS/config_rm_enabled.py pyPORIS/config_rm.py
python3 pyPORIS/graph2poris.py models/$1.graphml || { echo "graph2poris could not be processed"; exit 1; } 
mv models/$1.graphml models/$1.old.graphml
mv models/$1.out.graphml models/$1.graphml
python3 pyPORIS/poris2xml.py models/$1.ods || { echo "poris2xml could not be processed"; exit 1; } 
java -jar pyPORIS/AstroPorisPlayer/bin/AstroPorisPlayer.jar models/$1.xml

