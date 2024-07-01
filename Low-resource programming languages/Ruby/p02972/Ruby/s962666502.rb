def divisors(n)
  b = Array.new
  for i in 1..((n**0.5))
    if n % i == 0
      b.push(i)
    end
  end
  len = b.length
  len.times{|i|
    if n/b[len-1-i] != b[len-1-i]
      b.push(n/b[len-1-i])
    end
  }
  b
end
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
wa = Array.new(n,0)
ans = []
n.downto(1) do |i|
  if a[i-1] != wa[i-1]
    ans.push(i)
    divisors(i).each do |x|
      wa[x-1] += 1
      wa[x-1] %= 2
    end
  end
end
puts ans.length
ans.reverse.each do |x|
  print "#{x} "
end
