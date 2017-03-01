class Cat

  # Method to get the name back (getters & setters)
  attr_reader :name, :sound

  def initialize(name)
    # use instance variable if not resetting the value anywhere else
    @name = name
    @sound = "meow"
  end

end