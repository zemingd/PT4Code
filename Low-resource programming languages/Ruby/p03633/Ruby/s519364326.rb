def gcm(m, n)
  if m % n == 0
    n
  else
    gcm(n, m % n)
  end
end

def lcm(m, n)
  m * n / gcm(m, n)
end

n = gets.chomp.to_i

ans = 1
n.times do
  ans = lcm(ans, gets.chomp.to_i)
end
puts ans
