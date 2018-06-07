class Fib

  # Makes @array available everywhere (e.g. in rspec)
  attr_accessor :array

  # Initialize is a ruby method that runs first
  def initialize
    @array = Array.new
    # Adds 1 and 2 to the array
    @array.push(1)
    @array.push(2)
  end

  def gen_fib(num1, num2)
    num1 + num2
  end

  # Generate the fibonacci sequence up to an upper limit
  def gen_sequence(max)
    # Declare values
    current = @array.last
    index = @array.index(current)

    # Create sequence
    next_fib = gen_fib(@array[index], @array[index-1])

    while next_fib < max do

      # Add number to array
      @array.push(next_fib)

      # Change current and index after adding to array
      index += 1

      # Test limit
      next_fib = gen_fib(@array[index], @array[index-1])

    end
  end

  def sum_fib
    sum = 0
    @array.each do |fib|
      if fib.even? then sum += fib end
    end
    sum
  end

end
