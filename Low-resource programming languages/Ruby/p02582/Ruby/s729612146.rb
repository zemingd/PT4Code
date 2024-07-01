s = gets.chomp.chars

cnt = 0
s.each_with_index {|v, i|
  cnt = 1 if v == 'R' && i == 0
  if v == 'R' && i > 0
    if v == s[i-1]
      cnt += 1
    else
      cnt = 1
    end
  end
}

p cnt