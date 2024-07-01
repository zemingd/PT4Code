n = gets.to_s.to_i

ans = n
(n+1).times do |i|
  
  c = 0
  t = i
  while t > 0
    c += t%6
    break if ans <= c
    t /= 6
  end
  next if ans <= c
  t = n-i
  while t > 0
    c += t%9
    break if ans <= c
    t /= 9
  end
  
  ans = c if ans > c
end

puts ans