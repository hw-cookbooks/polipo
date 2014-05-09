require 'spec_helper'

describe 'polipo::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should install the package' do
    expect(chef_run).to install_package('polipo')
  end
end
