require 'spec_helper'
describe 'nginx::config' do

  context 'for a Linux distro' do
    let(:facts) {{ :kernel => 'linux' }}
    it do
      should contain_file('/etc/nginx.conf').with({
        'ensure'  => 'file',
        'mode'    => '0644',
        'owner'   => 'root',
        'group'   => 'root',
        'content' => /Managed by puppet/,
        'notify'  => 'Service[nginx]',
        })
    end
  end
end
