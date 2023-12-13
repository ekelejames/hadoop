#
# Author:: ekele james <ekelejames.e@gmail.com>


actions :enable, :disable

attribute :class_name, :kind_of => String, :name_attribute => true
attribute :source, :default => nil, :kind_of => String
attribute :arguments, :default => []
attribute :supports, :kind_of => Hash, :default => { :report => true, :exception => true }

# we have to set default for the supports attribute 
# in initializer since it is a 'reserved' attribute name
def initialize(*args)
  super
  @action = :enable
  @supports = { :report => true, :exception => true }
end
