n = gets.to_i
as = gets.chomp.split.map(&:to_i)
as.sort!
ans = 10000000000
corrent = as.shift
gcd = 0
as.each do |a|
  gcd = corrent.gcd(a)
  corrent = gcd
end
p gcd
