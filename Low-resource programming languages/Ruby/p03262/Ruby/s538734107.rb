n, x = gets.chomp.split(" ").map(&:to_i)
xx = gets.chomp.split(" ").map(&:to_i)

nx = xx.map{|e| (x - e).abs}

a = nx.shift
d = a
nx.each do |e|
  d = a.gcd(e)
end
puts d
