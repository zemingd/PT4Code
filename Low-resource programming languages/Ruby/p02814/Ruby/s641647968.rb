N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

lcm = as.reduce { |acc, l| acc.lcm(l) }
puts (M + (lcm / 2)) / lcm
# if as.include?(lcm)
#   puts M / lcm
# else
#   puts M / lcm
# end