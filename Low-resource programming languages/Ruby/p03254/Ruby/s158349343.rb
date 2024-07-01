n,k = gets.split.map(&:to_i)
s = gets.split.map(&:to_i).sort

if s.inject(:+) == k
  puts n
else
  ans = 0
  n.times do |i|
    if k >= s[i]
      ans += 1
      k -= s[i]
    else
      break
    end
  end
  puts [ans,n-1].min
end
