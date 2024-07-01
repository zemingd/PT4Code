# after listening explanation
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).map{|ai|ai/2}
if a.count{|ai|ai%2==0}>0
  p 0
  exit
end
lcm = a.uniq.inject(&:lcm)
p (m/lcm+1)/2