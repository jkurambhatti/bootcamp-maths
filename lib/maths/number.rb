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

  # AS a Math fanatic,
  # GIVEN a positive even integer,
  # I WANT to calculate its half,
  # SO THAT I can use it for collatz conjecture.

def calculate_half
  if(self.number.even? && self.number >= 2)
    self.number / 2
  else
    0
  end
end



# AS a Math fanatic,
# GIVEN a positive odd integer,
# I WANT to calculate its ((3 * number) + 1),
# SO THAT I can use it for collatz conjecture.

def thrice_n_plus_one
  return 0 if self.number < 1 #short hand notation
  if ( self.number.odd? )
    (3 * self.number) + 1
  else
    0
  end
end


# AS a Math fanatic,
# GIVEN a positive number,
# I WANT to calculate its collatz conjecture cycles count,
# WHERE 1 iteration count equals to 1 cycle count,
# AND 1 Iteration is,
# If the number is even, divide it by two
# If the number is odd, triple it and add one
# AND iteration stop once number reaches 1,
# SO THAT I can win $100,000.


def cycle_count
  1
end



  alias_method :n!, :factorial

  private

  attr_writer :number
end
