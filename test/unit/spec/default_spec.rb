# -*- encoding : utf-8 -*-

require_relative 'spec_helper'

describe 'ruby_install::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes dependent cookbooks' do
    expect(chef_run).to include_recipe('ark')
  end

  it 'changes ownership of ruby-install to root:root' do
    expect(chef_run).to run_execute('chown root:root /usr/local/bin/ruby-install')
  end
end
