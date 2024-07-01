def chmin(a, b)
  a > b ? b : a
end
s = gets.chomp

t = s.length
cnt1 = 0
cnt0 = 0
(0..t - 1).each do |i|
    s[i] == '0' ? cnt0 += 1 : cnt1 += 1
end

k = chmin(cnt0,cnt1)

puts k * 2

