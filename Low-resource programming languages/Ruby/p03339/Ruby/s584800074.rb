gets.to_i
S = gets.chomp.chars

r_e = S.count{|s| s == 'E'}
l_w = 0
ans = S.map{|s|
  r_e -= 1 if s == 'E'
  wk = r_e + l_w
  l_w += 1 if s == 'W'
  wk
}

puts ans.min
