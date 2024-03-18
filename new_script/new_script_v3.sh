#!/bin/bash

# Holds the 1st argument that is entered
# Names the script that is getting created
script=$1.sh

# Copy a script that already has "#!/bin/bash" in it. 
# This will allow the user to start creating their script without... 
# the worry of forgetting to place shebang at the beginning of the script.
# The tilda and forward slash ("~/") before "prompt.sh" allows this script to...
# copy the defined file, regardless of the directory that the user is in.
cp ~/prompt.sh $script

# Make the script executable
chmod +x $script

# Lists the file(s) and/or directory(s)
# Lists them in a long format
# Sort by modication date
# Reverse sort order
# Add color to the list
ls -ltr --color=auto