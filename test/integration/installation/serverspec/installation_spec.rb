# -*- encoding : utf-8 -*-

require_relative 'spec_helper'

describe 'ruby-install is installed at /usr/local/bin/ruby-install' do
  describe file('/usr/local/bin/ruby-install') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 755 }
  end

  describe command('/usr/local/bin/ruby-install --version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match /ruby-install: 0.5.0/ }
  end
end
