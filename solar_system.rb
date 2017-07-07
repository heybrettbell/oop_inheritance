class System

end

class Body
  attr_reader :bodies, :name, :mass

  @@bodies = []

  def initialize(name, mass)

    @name = name
    @mass = mass

  end

  def self.total_mass
    sum = 0
    @@bodies.each do |celestial_body|
      sum += celestial_body.mass
    end
    puts "The current total mass is #{sum}."
  end

  def self.add(new_body)

    @@bodies << new_body

  end

  def self.mass_total
    @@bodies
  end

end

class Planet < Body

  @day = 24 # of hours to rotate once
  @year = 365 # of days to orbit sun

end

class Star < Body

  @type = "g" #(e.g G-type)

end

class Moon < Body

  @month = 30 # of days to orbit planet
  @planet = "earth" # planet that they orbit

end
