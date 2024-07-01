N = gets.chomp.to_i
n = N % 26
s = gets.chomp.split("").map(&:ord)

s.map! do |i|
  i += n
  i -= 26 if i >= 91
  i
end
ans = []
s.each do |i|
  ans << i.chr
end
an = ans.join("")
puts an
