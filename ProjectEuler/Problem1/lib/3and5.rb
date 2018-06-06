class Multiples

  attr_accessor :array

  def initialize
    @array = []
  end

  def divisible_by?(num, div_by_num)
    (num % div_by_num).zero?
  end

  def create_array(min,max)
    n = 0
    (min..max-1).each do |i|
      if divisible_by?(i,3) || divisible_by?(i,5)
        @array << i
        n += i
      end
    end
    return n
  end

end
