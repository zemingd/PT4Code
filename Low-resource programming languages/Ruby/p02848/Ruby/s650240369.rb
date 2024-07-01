n = gets.chomp("").to_i
s = gets.chomp("")

alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
h = alpha.chars

a = s.chars

ans = Array.new
a.each do |i|
  if 25 < (h.index(i) + n)
    ans << alpha[h.index(i) + n - 26]
  else
      ans << alpha[h.index(i) + n]
  end
end

puts ans.join
