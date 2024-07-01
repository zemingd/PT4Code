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
a = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new(0)
flg = false
a.each do |x|
  pre = 0
  divisors(x).each do |v|
    if pre != v
      hash[v] += 1
      if hash[v] == 2
        flg = true
      end
      pre = v
    end
  end
  if flg
    break
  end
end
if !flg
  puts "pairwise coprime"
else
  gcd = 0
  a.each do |x|
    gcd = gcd.gcd(x)
  end
  if gcd == 1
    puts "setwise coprime"
  else
    puts "not coprime"
  end
end