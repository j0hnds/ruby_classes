# Closures are about what is encapsulated within a proc/lambda definition
# that can be used outside the context in which the proc/lambda was
# actually defined

def create_proc(value)
  local_variable = 11
  lambda { puts "Local variable: #{local_variable} - Passed in value: #{value}" }
end

the_lambda = create_proc 22

the_lambda.call

# => Local variable: 11 - Passed in value: 22

# Note that even though the lambda was executed outside the context of the 
# create_proc method body, it was still able to know about the local_variable 
# and the parameter passed into the method.
#
# Kinda creepy, but that is a big part of what a closure is.
