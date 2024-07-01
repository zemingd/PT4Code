s=gets.chomp.chars

cnt = 0
s.each_with_index{|v, i|
  cnt = 0 if v == 'S'
  if v != 'S'
    cnt += 1 if v == s[i - 1]
  else
    cnt += 1
  end
}

p cnt