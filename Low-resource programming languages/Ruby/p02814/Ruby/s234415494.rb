N,M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

lcm = as.uniq.inject(&:lcm)

p (M+lcm/2)/lcm

