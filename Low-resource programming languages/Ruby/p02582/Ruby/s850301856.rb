s=gets.chomp.chars

cnt = 0
s.each_with_index{|v, i|
  if v == 'R'
    cnt += 1  if v == s[i - 1]
  else
    cnt += 1 if v != 'S'
  end
}

p cnt