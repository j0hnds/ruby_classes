array = [ 1, 2, 3, 4 ]

# We've all seen this before...
array.collect! do | n |
  n ** 2
end

puts array.inspect

# Should result in 
# => [ 1, 4, 9, 16 ]
