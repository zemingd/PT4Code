n,x = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i)
xs << x
xs.sort!
x0 = xs.shift
xs = xs.map{|x| x - x0}
gcd = xs.shift
xs.each do |x|
  gcd = x.gcd(gcd)
end
puts gcd
