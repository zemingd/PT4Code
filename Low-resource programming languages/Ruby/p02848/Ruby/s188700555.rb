n = gets.to_i
ans = ""

gets.chomp.each_char do |c|
  num = c.ord
  num += n
  num -= 26 if num > 90
  ans += num.chr
end

puts ans