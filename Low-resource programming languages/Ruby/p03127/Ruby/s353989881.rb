n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)


def gcd(m,n)
  m,n = n,m % n while n > 0
  m
end

ans = 1000000000

n.times do |index|
  if index == 0 then
    ans = gcd(a[index], a[index+1])
  else
    ans = gcd(a[index], ans)
  end
end

puts ans
