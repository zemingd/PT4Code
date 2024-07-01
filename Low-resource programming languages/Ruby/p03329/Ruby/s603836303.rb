n = gets.to_s.to_i

a = [1, 6, 9, 36, 81, 216, 729, 1296, 6561, 7776, 46656, 59049, 531441, 1000000000]
ans = 0
while n > 0
  
  k = a.bsearch_index { |x| x > n }
  n -= a[k-1]
  ans += 1
  
end

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