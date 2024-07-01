s = gets.chomp.cahrs

cnt = 0
s.each_with_index {|v, i|
  if v == 'R' && i > 0
    if v == s[i-1]
      cnt += 1
    else
      cnt = 1
    end
  end
}

p cnt