
user 'edmamerto' do
  action :create
end

directory '/home/edmamerto' do
  owner 'edmamerto'
  mode '0755'
  action :create
end

execute 'generate ssh key' do
	user 'edmamerto'
	creates '/home/edmamerto/.ssh/id_rsa.pub'
	command 'ssh-keygen -t rsa -q -f /home/edmamerto/.ssh/id_rsa -P \'\''
end