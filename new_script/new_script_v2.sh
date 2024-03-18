#!/bin/bash

# Holds the 1st argument that is entered
# Names the script that is getting created
script=$1.sh

# Copy a script that already has "#!/bin/bash" in it. 
# This will allow the user to start creating their script without 
# the worry of forgetting to place shebang at the beginning of the script
cp prompt.sh $script

# Make the script executable
chmod +x $script

# Lists the file(s) and/or directory(s)
# Lists them in a long format
ls -l
