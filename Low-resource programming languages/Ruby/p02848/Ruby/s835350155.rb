n = gets.chomp.to_i
s = gets.chomp

ss = s.split('')

alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
ans = ""

ss.each do |x|
  i = alpha.index(x)
  i += n
  if i >= 26
    i -= 26
  end
  ans += alpha[i]
end

puts ans
