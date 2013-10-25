# -*- coding: utf-8 -*-
# Another difference between lambdas and Procs?
#
# Lambdas have diminutive returns.

# The test harness for a Proc
def proc_return
  Proc.new { return "Proc.new"}.call
  return "proc_return method finished"
end

# The test harness for a lambda
def lambda_return
  lambda { return "lambda" }.call
  return "lambda_return method finished"
end

puts proc_return
puts lambda_return

# => Proc.new
# => lambda_return method finished

# Procs in Ruby are drop in code snippets, not methods. Because of this, 
# the Proc return is the proc_return method’s return, and acts accordingly. 
# Lambdas however act just like methods, as they check the number of 
# arguments and do not override the calling methods return. For this reason, 
# it is best to think of lambdas as another way to write methods, an anonymous 
# way at that.
