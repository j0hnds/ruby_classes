# Yet again, we write our iterator to be called with 
# a Proc
class Array

  def iterate!(code)
    self.each_with_index do | n, i |
      self[i] = code.call n
    end
  end

end

array = [1, 2, 3, 4]

# Call iterate with a lambda
array.iterate! lambda { |n| n ** 2 }

puts array.inspect

# => [1, 4, 9, 16]

# There is an alternate syntax for lambdas. You can do the same
# as above as follows:

array.iterate! ->(n) { n ** 2 }

puts array.inspect

# => [1, 4, 9, 16]
