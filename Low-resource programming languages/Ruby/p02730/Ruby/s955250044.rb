s = gets.chomp


ans1 = s[0...((s.length - 1) / 2)]
ans2 = s[0...((s.length - 1) / 2)].reverse

ans3 = s[((s.length + 3) / 2) - 1...s.length]
ans4 = s[((s.length + 3) / 2) - 1...s.length].reverse

puts s == s.reverse && ans1 == ans2 && ans3 == ans4 ? "Yes" : "No"
