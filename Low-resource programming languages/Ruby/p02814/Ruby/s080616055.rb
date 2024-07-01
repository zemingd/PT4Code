# after listening explanation
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.map!{|ai|ai/2}
lcm = a.uniq.inject(&:lcm)
p (m/lcm+1)/2
