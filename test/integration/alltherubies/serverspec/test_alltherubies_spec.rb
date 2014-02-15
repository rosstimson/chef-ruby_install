# -*- encoding : utf-8 -*-

require_relative 'spec_helper'

describe 'compiles and installs Ruby 1.9.3-p484 into /opt/rubies' do
  describe command('/opt/rubies/ruby-1.9.3-p484/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/ruby 1.9.3p484.*/) }
  end
end

describe 'compiles and installs Ruby 2.0.0-p353 into /opt/rubies' do
  describe command('/opt/rubies/ruby-2.0.0-p353/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/ruby 2.0.0p353.*/) }
  end
end

describe 'compiles and installs Ruby 2.1.0 into /opt/rubies' do
  describe command('/opt/rubies/ruby-2.1.0/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/ruby 1.9.3p484.*/) }
  end
end

describe 'compiles and installs Rubinius 2.2.5 into /opt/rubies' do
  describe command('/opt/rubies/rbx-2.2.5/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/rubinius 2.2.5.*/) }
  end
end

describe 'compiles and installs jRuby 1.7.10 into /opt/rubies' do
  describe command('/opt/rubies/jruby-1.7.10/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/jruby 1.7.10.*/) }
  end
end
