require 'spec_helper'

describe package('polipo') do
  it { should be_installed }
end
