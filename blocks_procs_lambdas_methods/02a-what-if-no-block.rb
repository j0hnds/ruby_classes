# This time, we want our new Array method to behave sensibly if
# no block is specified

class Array

  def iterate!
    # Notice the #block_given? method...
    (puts "Nothing to do!"; return) unless block_given?

    self.each_with_index do | n, i |
      self[i] = yield n
    end
  end

end

array = [ 1, 2, 3, 4 ]

# Called with a block - AOK
# array.iterate! do | n |
#   n ** 2
# end

# Called with no block - print the message
array.iterate!

puts array.inspect

# Should result in 
# => [ 1, 4, 9, 16 ]
# => Nothing to do!
