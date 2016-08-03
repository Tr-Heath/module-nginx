require 'spec_helper'
describe 'nginx::install' do

  context 'OS based on Linux' do
    let(:facts) {{ :kernel => 'linux' }}
    it do
       should contain_package('nginx').with({
         'ensure' => 'installed',
       })
    end
  end

  context 'Unsupported operating system' do
    let(:facts) {{ :kernel => 'foobarisnotanOS' }}
    it do
      expect {
        should contain_class ('nginx::install')
      }.to raise_error(Puppet::Error, /unsupported/)
    end
  end
end
