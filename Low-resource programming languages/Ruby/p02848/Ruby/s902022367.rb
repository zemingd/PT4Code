n = gets.chomp.to_i
s = gets.chomp
ans = ""
a = "A"
z = "Z"

s.chars.each do |char|
  num = char.ord + n
  num -= 26 if num > z.ord
  ans << num.chr
end

puts ans
