# Difference between and lambda and a Proc?
#
# A lambda verifies the arguments (like a regular method)

# Our test harness
def args(code)
  one, two = 1, 2
  # Call the code as if it has only two arguments
  code.call(one, two)
end

# Define a Proc with three arguments
args(Proc.new{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

# Define a lambda with three arguments
args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

# => Give me a 1 and a 2 and a NilClass
# *.rb:8: ArgumentError: wrong number of arguments (2 for 3) (ArgumentError)
