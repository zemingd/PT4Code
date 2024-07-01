n,k=gets.split.map(&:to_i)
d=gets.split.map(&:to_i)
y = (0..9).to_a - d
if (n.to_s.split('').map { |e| e.to_i } - y).empty?
  puts n
  exit
end
head = y.select { |e| e > 0 }.sort.first
min = y.sort.first
digits = n.to_s.size
if n.to_s[0].to_i < head
  puts head.to_s + min.to_s * (digits - 1)
else
  puts head.to_s + min.to_s * digits
end
