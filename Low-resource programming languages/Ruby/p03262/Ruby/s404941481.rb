N,X = gets.split.map(&:to_i)
x = []
gets.split.each do |s|
    x.push (X-s.to_i).abs
end
g = x[0]
x[1..-1].each do |a|
    g = g.gcd(a)
end
puts g
