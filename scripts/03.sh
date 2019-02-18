rm -rf /Volumes/Storage/goinfre/lterrail/vagrant
rm /Volumes/Storage/goinfre/lterrail/Vagrantfile
mkdir /Volumes/Storage/goinfre/lterrail/vagrant
echo 'export VAGRANT_HOME=/Volumes/Storage/goinfre/lterrail/vagrant' >> ~/.zshrc
touch /Volumes/Storage/goinfre/lterrail/Vagrantfile
echo "Vagrant.configure(\"2\") do |config|\n\tconfig.vm.box = \"debian/stretch64\"\n\tconfig.vm.synced_folder \".\", \"/git\"\nend" >> /Volumes/Storage/goinfre/lterrail/Vagrantfile
cd /Volumes/Storage/goinfre/lterrail
vagrant plugin install vagrant-vbguest
vagrant up
vagrant vbguest
vagrant ssh
