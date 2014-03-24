# -*- encoding : utf-8 -*-

require_relative 'spec_helper'

describe 'ruby-install 0.4.1 is installed at /usr/local/bin/ruby-install' do
  describe file('/usr/local/bin/ruby-install') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 755 }
  end

  describe command('/usr/local/bin/ruby-install --version') do
    it { should return_exit_status 0 }
    it { should return_stdout 'ruby-install: 0.4.1' }
  end
end
