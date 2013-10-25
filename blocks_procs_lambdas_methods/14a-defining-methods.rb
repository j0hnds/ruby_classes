# How are methods defined?

class SampleClass
  # The 'normal' way:
  def the_method(name)
    puts "normal method #{name}"
  end

  # The 'cool' way:
  define_method('the_cool_method') do | name |
    puts "cool method #{name}"
  end

end

sc = SampleClass.new

sc.the_method 'Joe'

# => normal method Joe

sc.the_cool_method 'Sam'

# => cool method Sam
