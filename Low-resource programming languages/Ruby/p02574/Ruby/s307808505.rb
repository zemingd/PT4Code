n = gets.to_i
as = gets.split(' ').map(&:to_i)

pairwise = true
setwise = true

lcm = 1
gcd = nil
as.each do |a|
  gcd = a if gcd.nil?
  if lcm.gcd(a) != 1
    pairwise = false
  end
  lcm = lcm.lcm(a)
  gcd = gcd.gcd(a)
end

if pairwise
  puts 'pairwise coprime'
elsif gcd == 1
  puts 'setwise coprime'
else
  puts 'not coprime'
end
