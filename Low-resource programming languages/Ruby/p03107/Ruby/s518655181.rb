s = gets.rstrip
cnt0 = s.count('0')
cnt1 = s.count('1')
p (s.size - (cnt0-cnt1).abs)