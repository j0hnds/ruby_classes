# So, why can't we just use blocks? What good is a proc?

#
# What if you have a method that requires multiple callbacks
# instead of a single one (like a block)?

def callbacks(procs)
  procs[:starting].call

  puts "Still going"

  procs[:finishing].call
end

# You can do it with procs
callbacks(starting: Proc.new { puts "Starting" },
          finishing: Proc.new { puts "Finishing" })

# => Starting
# => Still going
# => Finishing

# So, when should you use blocks over Procs? My logic is as follows:

# Block: Your method is breaking an object down into smaller pieces, and you want to 
#        let your users interact with these pieces.
# Block: You want to run multiple expressions atomically, like a database migration.
# Proc: You want to reuse a block of code multiple times.
# Proc: Your method will have one or more callbacks.
