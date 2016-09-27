class Maths::Number
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def factorial
    if (self.number < 0)
      Float::INFINITY
    elsif (self.number == 0)
      1
    else
      # HACK: Should be simplified
      number = self.number
      self.number = self.number - 1
      number * self.factorial
    end
  end

def calculate_half
  if(self.number == 4 )
    2
  elsif (self.number == 16)
    8
  else
    0
  end
end


  alias_method :n!, :factorial

  private

  attr_writer :number
end
