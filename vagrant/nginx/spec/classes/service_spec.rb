require 'spec_helper'
describe 'nginx::service' do
  context 'for a Linux distro' do
    it do
      should contain_service('nginx').with({
        'ensure' => 'running',
        'enable' => 'true',
      })
    end
  end
end
