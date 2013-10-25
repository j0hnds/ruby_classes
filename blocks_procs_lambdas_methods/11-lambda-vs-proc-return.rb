# -*- coding: utf-8 -*-

def generic_return(code)
  code.call
  return "generic_return method finished"
end

puts generic_return(Proc.new { return "Proc.new" })
puts generic_return(lambda { return "lambda" })

# => *.rb:6: unexpected return (LocalJumpError)
# => generic_return method finished

# Procs in Ruby are drop in code snippets, not methods. Because of this, 
# the Proc return is the proc_return method’s return, and acts accordingly. 
# Lambdas however act just like methods, as they check the number of 
# arguments and do not override the calling methods return. For this reason,
# it is best to think of lambdas as another way to write methods, an anonymous 
# way at that.
