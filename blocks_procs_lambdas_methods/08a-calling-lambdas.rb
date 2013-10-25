# Now, there are different ways to call lambdas (starting with 1.9)

my_lambda = ->(a, b) { 2 * (a + b) }

puts my_lambda.call(1, 2)

# => 6

puts my_lambda.(2, 3)

# => 10

puts my_lambda[3, 4]

# => 14
