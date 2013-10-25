# Let's write a method to find out WTF

def what_am_i(&block)
  block.class
end

# Call with a block (an empty one)
puts what_am_i {}

# Hmm, it's a Proc
# => Proc
