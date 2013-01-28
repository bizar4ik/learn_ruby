class Temperature


  def initialize(hash = {})
    if hash.include?(:f)
      @f_temp = hash[:f]
      @c_temp = ftoc(hash[:f])
    elsif hash.include?(:c)
      @c_temp = hash[:c]
      @f_temp = ctof(hash[:c])
    end
  end

  def Temperature.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def Temperature.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

    def in_celsius
      @c_temp
    end

    def in_fahrenheit
      @f_temp
    end

    def ftoc(temp)
      (temp-32) / 9 * 5.0
    end

    def ctof(temp)
      (temp * 9 / 5.0) + 32
    end
end



class Celsius <Temperature
	def initialize(temp)
	super(:c => temp)
	end
end

class Fahrenheit <Temperature
	def initialize(temp)
	super(:f => temp)
	end
end

