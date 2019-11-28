echo Docker Install

git clone https://github.com/HMSBennett/DockerInstall

cd DockerInstall

#./install.sh

./modDockerUser.sh

echo Build Image

cd HelloWorld

docker build -t helloworld:v1 .

echo Run Nginx/Page

docker run -d -p 8081:80 helloworld:v1
