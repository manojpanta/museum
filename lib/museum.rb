class Museum

  attr_reader :name,
              :exhibits,
              :revenue,
              :patrons

  def initialize(name = "Denver Museum of Nature and Science")
    @name = name
    @exhibits = {}
    @revenue = 0
    @patrons = []

  end

  def add_exhibit(name, cost)
    @exhibits[name] = cost
  end

  def admit(patron)
    @revenue += 10
    interest = patron.interests
    interest.each do |interest|
      if @exhibits[interest].nil?
        @revenue += 0
      else
      @revenue += @exhibits[interest]
      end
    end
  end



end
