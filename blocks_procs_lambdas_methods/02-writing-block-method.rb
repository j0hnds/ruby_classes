# Open up the Array class and add our own method that 
# will yield to a block

class Array

  def iterate!
    self.each_with_index do | n, i |
      self[i] = yield n   # Yield is the trick here
    end
  end

end

array = [ 1, 2, 3, 4 ]

# Same block as before
array.iterate! do | n |
  n ** 2
end

puts array.inspect

# Should result in 
# => [ 1, 4, 9, 16 ]
