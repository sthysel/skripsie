#! /bin/bash

chmod a+w ./src # until I find a better way...
docker run -it -v $(pwd)/src/:/work/ --hostname latex sthysel/latex
