class Patron

  attr_reader :name,
              :interests

  def initialize(name = "Bob")
    @name = name
    @interests = []
  end

  def add_interest(interest)
    @interests << interest
  end









end
