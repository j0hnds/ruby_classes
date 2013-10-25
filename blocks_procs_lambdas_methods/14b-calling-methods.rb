# How can you call methods?

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

# Called the 'normal' way...

sc.the_method 'Joe'

# => normal method Joe

sc.the_cool_method 'Sam'

# => cool method Sam

# How about this way?

{ the_method: 'Joe', the_cool_method: 'Sam' }.each_pair do | method, value |
  sc.send method, value
end

# => normal method Joe
# => cool method Sam

# Yet another way?
{ the_method: 'Joe', the_cool_method: 'Sam' }.each_pair do | method, value |
  meth = sc.method(method)
  meth.call value
end

# => normal method Joe
# => cool method Sam
