n = gets.to_s.to_i

ans = n
(n+1).times do |i|
  
  c = 0
  t = i
  while t > 0
    c += t%6
    t /= 6
  end
  
  t = n-i
  while t > 0
    c += t%9
    t /= 9
  end
  
  ans = c if ans > c
end

puts ans