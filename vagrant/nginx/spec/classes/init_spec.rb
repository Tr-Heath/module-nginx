require 'spec_helper'
describe 'nginx' do
  context 'with default values for all parameters' do
    let(:facts) {{ :kernel => 'linux' }}
    it { should contain_class('nginx') }
    it { should contain_class('nginx::install') }
  end
end
