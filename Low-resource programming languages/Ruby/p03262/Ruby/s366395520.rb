n,X = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i).sort
x.map!{|a| (a - X).abs}
gcd = x[0]
(n-1).times do |i|
  gcd = gcd.gcd(x[i+1])
end
puts gcd
