n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ret = a[0].gcd(a[1])
a.each do |x|
  ret = ret.gcd(x)
end
puts ret