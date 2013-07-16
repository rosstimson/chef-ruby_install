actions :install, :reinstall

attribute :definition,  :kind_of => String, :name_attribute => true
attribute :prefix_path, :kind_of => String
attribute :user,        :kind_of => String
attribute :group,       :kind_of => String
attribute :environment, :kind_of => Hash

def initialize(*args)
  super
  @action = :install
end
