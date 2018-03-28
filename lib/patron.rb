class Patron

  attr_reader :name,
              :interests,
              :revenue

  def initialize(name = "Bob")
    @name = name
    @interests = []
    @revenue = 0
  end

  def add_interests(interest)
    @interests << interest
  end









end
