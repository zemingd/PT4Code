s = gets.chomp
k = gets.to_i
n = s.size

remain = k
ans = s.dup
n.times do |i|
  if i == n - 1
    remain %= 26
    if s[i].ord + remain > 'z'.ord
      d = s[i].ord + remain - 'z'.ord
      ans[i] = ('a'.ord + d - 1).chr
    else
      ans[i] = (s[i].ord + remain).chr
    end
  else
    t = 'z'.ord - s[i].ord + 1
    if s[i] != 'a' && t <= remain
      ans[i] = 'a'
      remain -= t
    end
  end
end

puts ans
