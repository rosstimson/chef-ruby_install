# -*- encoding : utf-8 -*-

require_relative 'spec_helper'

describe 'compiles and installs Ruby 1.9.3-p545 into /opt/rubies' do
  describe command('/opt/rubies/ruby-1.9.3-p545/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/ruby 1.9.3p545.*/) }
  end
end

describe 'compiles and installs Ruby 2.0.0-p451 into /opt/rubies' do
  describe command('/opt/rubies/ruby-2.0.0-p451/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/ruby 2.0.0p451.*/) }
  end
end

describe 'compiles and installs Ruby 2.1.1 into /opt/rubies' do
  describe command('/opt/rubies/ruby-2.1.1/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/ruby 2.1.1p76.*/) }
  end
end

describe 'compiles and installs Rubinius 2.2.5 into /opt/rubies' do
  describe command('/opt/rubies/rbx-2.2.5/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/rubinius 2.2.5.*/) }
  end
end

describe 'compiles and installs jRuby 1.7.11 into /opt/rubies' do
  describe command('/opt/rubies/jruby-1.7.11/bin/ruby -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/jruby 1.7.11.*/) }
  end
end
