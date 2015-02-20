require 'serverspec'
set :backend, :exec

describe 'apache' do
  it 'is awesome' do
	expect(true).to eq true
  end

  it "is installed" do 
	expect(package('httpd')).to be_installed
  end

end

describe service('httpd') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe command('curl http://localhost/') do
  its(:stdout) { should match /Apache/ }
end
