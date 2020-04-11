# backgrounds_lock
Lock the Desktop Background and Lockscreen Backgrounds  for Ubuntu 18.04 to 19.10

This script locks the Desktop Background and Lockscreen Backgrounds for the OS Ubuntu 18.04 to 19.10

*Installation*

1. Download the file lock.sh
2. Change the Desktop Background Image path & Lockscreen Background Image Path as per your requirment in the above downloaded script.
3. Run the script with sudo privilages.. example `sudo /bin/bash $HOME/Downloads/lock.sh`
4. Logout and Logback..

Thats it!!!

*REMOVAL*

to make the changes null from above script run the below commands one by one with root previliges

`rm -r /etc/dconf/profile/user /etc/dconf/db/local.d`
`dconf update`
