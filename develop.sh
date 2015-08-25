#! /bin/bash

docker run -it -v $(pwd)/src/:/work/ --hostname latex sthysel/latex
