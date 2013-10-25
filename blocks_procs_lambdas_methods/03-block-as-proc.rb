# Now add a method to array that will invoke a block as 
# a proc.

class Array

  def iterate!(&code)
    
    self.each_with_index do | n, i |
      self[i] = code.call n # Note; not using yield; call it instead...
    end

  end

end

array = [ 1, 2, 3, 4 ]

# Call with a block as before...
array.iterate! do |n|
  n ** 2
end

puts array.inspect

# => [1, 4, 9, 16]
