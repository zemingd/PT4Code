N = gets.to_i
as = gets.split.map(&:to_i)
g = as[0]
as.each do |a|
    g = g.gcd(a)
end
puts g