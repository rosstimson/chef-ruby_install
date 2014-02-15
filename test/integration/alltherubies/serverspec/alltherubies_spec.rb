# -*- encoding : utf-8 -*-

require_relative 'spec_helper'

describe 'compiles and installs Ruby 1.9.3-p484' do
  describe command('/opt/rubies/ruby-1.9.3-p484/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/ruby 1.9.3p484.*/) }
  end
end
