def divisors(n)
  p = []
  2.upto((n**0.5)) do |i|
    break if i > n / i
    while n % i == 0
      p << i
      n /= i
    end
  end
  p << n if n != 1
  p
end
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
max = a.max
arr = Array.new(max+1,false)
flg = false
a.each do |x|
  break if flg
  pre = 0
  divisors(x).each do |y|
    next if y == pre
    v = y
    while v <= max
      if arr[v] == true
        flg = true
      end
      arr[v] = true
      v += y
    end
    pre = y
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