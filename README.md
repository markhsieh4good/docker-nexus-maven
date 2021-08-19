# Fast deploy/manger solution

## step
> 1
```
git clone [this project]
```
> 2 <br />
> you mast have docker-compose tools. [how to install](https://docs.docker.com/compose/install/) <br /><br />
> 3
```
;for linux
sudo bash ./start.sh
;for windows (git for windows)
bash ./start_windows.sh
```
> 4
```
;check status at linux
sudo docker-compose -f docker-compose.yml ps
;check status at windows (git for windows)
docker-compose -f docker-compose.yml ps
```
> 5
```
;only for nginx (apache ... Life will find its way out.)
sed -i "s/server_name .*/server_name YOUR.DOMAIN.NAME/g" nexus.conf
sudo cp nexus.conf /etc/nginx/conf.d/
sudo service nginx restart
```
> 6
```
;get default maven admin's password
bash ./get_admin_password.sh
;get password at windows (git for windows)
bash ./get_admin_password_windows.sh
```
