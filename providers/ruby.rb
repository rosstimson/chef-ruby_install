def load_current_resource
  @rubie        = new_resource.definition
  @prefix_path  = new_resource.prefix_path ||
    "#{node['ruby_install']['default_ruby_base_path']}/#{@rubie.gsub(' ', '-')}"
end

action :install do
  perform_install
end

action :reinstall do
  perform_install
end

private

def perform_install
  if ruby_installed?
    Chef::Log.debug(
      "ruby_install_ruby[#{@rubie}] is already installed, so skipping")
  else
    install_start = Time.now

    Chef::Log.info(
      "Building ruby_install_ruby[#{@rubie}], this could take a while...")

    rubie       = @rubie        # bypass block scoping issue
    prefix_path = @prefix_path  # bypass block scoping issue
    execute "ruby-install[#{rubie}]" do
      command   %{/usr/local/bin/ruby-install -i "#{prefix_path}" "#{rubie}"}
      user        new_resource.user         if new_resource.user
      group       new_resource.group        if new_resource.group
      environment new_resource.environment  if new_resource.environment

      action    :nothing
    end.run_action(:run)

    Chef::Log.info("ruby_install_ruby[#{@rubie}] build time was " +
      "#{(Time.now - install_start)/60.0} minutes")
    new_resource.updated_by_last_action(true)
  end
end

def ruby_installed?
  if Array(new_resource.action).include?(:reinstall)
    false
  else
    ::File.exists?("#{@prefix_path}/bin/ruby")
  end
end
