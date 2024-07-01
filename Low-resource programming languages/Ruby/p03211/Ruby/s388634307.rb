s = gets.to_i.to_s

i = 0
ans = []
(s.length - 2).times {
  num = (s[i] + s[i+1] + s[i+2]).to_i
  ans.push((753 - num).abs)
  i += 1
}

puts ans.min
