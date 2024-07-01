n = gets.to_i
as = gets.chomp.split.map(&:to_i)
gcd_f = [as[0]]
gcd_b = [as[-1]]
max = 0
(1..n-1).each do |i|
  gcd_f.push(as[i].gcd(gcd_f[-1]))
  gcd_b.push(as[n-1-i].gcd(gcd_b[-1]))
end
(0..n-3).each do |i|
  max = [max,gcd_f[i].gcd(gcd_b[n-3-i])].max
end
max = [max,gcd_f[n-2],gcd_b[n-2]].max
puts max
STDERR.print "#{gcd_f} \n"
STDERR.print "#{gcd_b} \n" 