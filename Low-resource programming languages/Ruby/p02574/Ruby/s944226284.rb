require 'prime'

n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
max = a.max
arr = Array.new(max+1,false)
flg = false
a.each do |x|
  break if flg
  Prime.prime_division(x).each do |y,z|
    v = y
    if arr[v] == true
      flg = true
    end
    arr[v] = true
  end
end
if flg
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