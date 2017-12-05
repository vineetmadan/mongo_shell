require 'spec_helper'
describe 'mongo_shell' do

  context 'with defaults for all parameters' do
    it { should contain_class('mongo_shell') }
  end
end
