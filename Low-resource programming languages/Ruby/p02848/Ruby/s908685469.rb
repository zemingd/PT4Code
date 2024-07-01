n = gets.to_i
s = gets.chomp

s.codepoints {|cp|
  a = cp+n
  if a > 90
    a -= 26
  end
  print a.chr
}