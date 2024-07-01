n = gets.to_i
s = gets.chomp

s.each_char do |c|
  moji_code = c.ord + n
  moji_code -= ("Z".ord - "A".ord + 1) if moji_code > "Z".ord
  print moji_code.chr
end