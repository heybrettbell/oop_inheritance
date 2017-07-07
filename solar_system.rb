class System
  attr_reader :bodies, :name, :mass

  @bodies = []

  def total_mass
    @bodies.each do |celestial_body|
      sum = sum + celestial_body
      return sum
    end
  end

end

class Body
    attr_reader :name, :mass

    def iniitalize(name, mass)
      @name = name
      @mass = mass
    end


  def add
    new_body = Body.new
    @bodies << new_body
    # return new_body  <-- not sure if I need this
  end

end

class Planet < Body
  #day (# of hours to rotate once)
  #year (# of days to orbit sun)
end

class Star < Body
  #type (e.g G-type)
end

class Moon < Body
  #month (# of days to orbit planet)
  # planet that they orbit
end
