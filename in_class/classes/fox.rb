class Fox

  # Method to get the name back (getters & setters in other languages)
  attr_reader :name, :sound

  def initialize(name)
    # use instance variable if not resetting the value anywhere else
    @name = name
    @sound = "konkon"
  end

end