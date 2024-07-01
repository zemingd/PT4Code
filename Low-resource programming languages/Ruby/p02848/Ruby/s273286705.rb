n = gets.chomp.to_i
s = gets.chomp

ans = ''
s.each_char do |c|
  char_code = c.ord + n
  char_code -= 26 if char_code > 'Z'.ord
  ans += char_code.chr
end

puts(ans)