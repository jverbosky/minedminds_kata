class Cat

  # Method to get the name back (getters & setters in other languages)
  attr_reader :name, :sound

  def initialize(name)
    # use instance variable if not resetting the value anywhere else
    @name = name
    @sound = "meow"
  end

  def to_s()
    return "#{@name} says #{@sound}."
  end



end