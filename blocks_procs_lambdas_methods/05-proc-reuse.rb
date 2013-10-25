# Re-write our method to use a Proc rather than a block

class Array

  def iterate!(code)
    self.each_with_index do | n, i |
      self[i] = code.call(n)
    end
  end

end

array_1 = [1, 2, 3, 4]
array_2 = [2, 3, 4, 5]

# Create the Proc and hold it in the variable square
square = Proc.new do |n|
  n ** 2
end

# Note that we no longer have to repeat the square code
# under these circumstances.
array_1.iterate! square
array_2.iterate! square

puts array_1.inspect
puts array_2.inspect

# => [1, 4, 9, 16]
# => [4, 9, 16, 25]
