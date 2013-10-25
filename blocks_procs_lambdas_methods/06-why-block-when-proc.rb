# Why do we need blocks when Proc's are first-class
# objects?

# Here we go again; using a proc rather than block
class Array

  def iterate!(code)
    self.each_with_index do | n, i |
      self[i] = code.call(n)
    end
  end

end

array = [1, 2, 3, 4]

#
# We have blocks so we don't have to write 
# code like this!
#
array.iterate!(Proc.new do |n| 
  n ** 2
end)

puts array.inspect

# => [1, 4, 9, 16]
