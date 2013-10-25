# Just to be sure we are all aware of how scoping differs between the 
# different flavors of objects.

variable_in_top_level_scope = 5

puts variable_in_top_level_scope

# => 5

# What about a block?
(1..2).each { puts variable_in_top_level_scope }

# => 5
# => 5

# What about a proc?
p = Proc.new { puts variable_in_top_level_scope }

p.call

# => 5

# No big surprise since a block is a proc. Doh!

# A lambda?
p = lambda { puts variable_in_top_level_scope }

p.call
# => 5

# A method?
def a_method
  puts variable_in_top_level_scope
end

a_method

# undefined local variable

