n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
max = a.max
arr = Array.new(max+1,false)
flg = false
lcm = 1
v = 1
a.each do |x|
  lcm = lcm.lcm(x)
  v *= x
end
if v != lcm
  gcd = 0
  a.each do |x|
    gcd = gcd.gcd(x)
  end
  if gcd == 1
    puts "setwise coprime"
  else
    puts "not coprime"
  end
else
  puts "pairwise coprime"
end