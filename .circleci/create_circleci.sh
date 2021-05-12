#This script downloads and configures circleci

#Cleaning previous files
if [ -d "/tmp/circleci" ]
then
    sudo rm -r /tmp/circleci
    echo "Previous /tmp/circleci/ found and cleaned"
fi

if [ -d "/bin/circleci" ]
then
    sudo rm -r /bin/circleci
    echo "Previous /bin/circleci/ found and cleaned"
fi


#Download circleci
echo "Downloading circleci-cli_0.1.15224_linux_amd64.tar.gz"
sudo mkdir /tmp/circleci
cd /tmp/circleci
sudo wget https://github.com/CircleCI-Public/circleci-cli/releases/download/v0.1.15224/circleci-cli_0.1.15224_linux_amd64.tar.gz

echo "Extracting circleci-cli_0.1.15224_linux_amd64.tar.gz"
sudo tar xvzf circleci-cli_0.1.15224_linux_amd64.tar.gz

if [ -d "/tmp/circleci/circleci-cli_0.1.15224_linux_amd64" ]
then 
    echo "Folder Extracted"
    cd /tmp/circleci/circleci-cli_0.1.15224_linux_amd64
    sudo mkdir /bin/circleci
    sudo mv /tmp/circleci/circleci-cli_0.1.15224_linux_amd64/* /bin/circleci/
    echo "Files moved to /bin/circleci"
    sudo rm -r /tmp/circleci
    echo "/tmp/circleci tmp files deleted"

else
    echo "Folder failed to Extracted"
fi




