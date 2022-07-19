Invoke-WebRequest https://downloads.rclone.org/rclone-current-windows-amd64.zip -OutFile rclone.zip
Expand-Archive rclone.zip

Invoke-WebRequest https://raw.githubusercontent.com/thereisnothinginhere/heroleechbot0sdaf/master/tobrot/helper_funcs/rclone.conf -OutFile \rclone\rclone.conf
ls .\rclone
.\rclone\rclone.exe sync Shared:HeroBenHero/Cartoons/"Ben 10" OnedriveBusiness:"Ben 10" --config=rclone.conf --progress --drive-acknowledge-abuse
