# Did you know that you can pull off a method from an instance of
# a class and pass it around as a variable and execute it later 
# without a reference to the original instance of the class?

class TheClass

  def initialize(base_value)
    @base_value = base_value
  end

  def add_to_base_value(addend)
    @base_value + addend
  end

end

def method_extractor
  TheClass.new(15).method(:add_to_base_value)
end

# Ask the #method_extractor for a reference to the 'add_base_value' method
p = method_extractor

# Call the method return with the required argument
result = p.call(10)

puts result

# Whoa. It worked. Weird.
# => 25
