class Museum

  attr_reader :name,
              :exhibits,
              :revenue,
              :patrons

  def initialize(name = 'Denver Museum of Nature and Science')
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
    interests = patron.interests
    interests.each do |interest|
      if @exhibits[interest].nil?
        @revenue += 0
      else
        @revenue += @exhibits[interest]
        @patrons << [interest, patron.name]
      end
    end
  end

  def patrons_of(exhibit)
    array1 = []
    @patrons.find_all do |array|
      if array[0] == exhibit
        array1 << array[1]
      end
    end
    array1
  end
end
