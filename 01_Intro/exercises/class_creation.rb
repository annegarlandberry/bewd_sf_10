class Person

attr_reader :name, :age, :home_town
attr_writer
attr_accessor

def initialize(name, age, home_town)
  @name = name
  @age = age
  @home = home_town
end
##attr_reader creates getter methods for all symbols that you get
##def name
  ##@name
##end

##def age
  ##@age
##end

##def home_town
  ##@home_town
##end
##attr_writers create attributes for all
##def name=value
  ##@name=value
##end
binding.pry
brad = Person.new("Brad", 50, "New Orleans") ##the minute you assign information to an attribute, you are fine
  ##attr_accessor is attr reader and attr writer capabilities for both
