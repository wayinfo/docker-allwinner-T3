# docker-allwinner-T3
可以用这个dockerfile生成的映像去编译T3的android6.0源码

常用docker操作
image相關指令
sudo docker build -t "NAME:TAG" .    由Dockerfiler建立image, -t 指定image的名稱與tag, 注意最後有"." 
sudo docker images           列出所有images
sudo docker rmi              刪除image
sudo docker save -o ubuntu_14.04.tar ubuntu:14.04    將映像檔從本地倉庫存成檔案
sudo docker load --input ubuntu_14.04.tar            將映像檔檔案載入至本地倉庫

container相關指令
sudo docker container ls     列出執行中的容器
sudo docker ps -a            列出已終止的容器
sudo docker start -ia container_id  啟動終止的容器
sudo docker run -v /host_dir:/client_dir -it image_id /bin/bash   由image啟動新的容器進入bush,並掛載/host_dir目錄至容器的/client_dir位置

当发现映像缺东西，安装以后，可以用下面的指令来提交到原映像，覆盖原映像，只要用原映像的名字
docker commit -m="描述消息" -a="作者" 容器ID或容器名 镜像名:TAG
