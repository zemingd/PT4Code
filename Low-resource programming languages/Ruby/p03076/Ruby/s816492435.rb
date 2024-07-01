a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
o = [a,b,c,d,e].sort_by { |e| (e % 10) == 0 ? 10 : (e % 10) }.reverse
sum = 0
0.upto(3) do |i|
  sum += (o[i] / 10) * 10
  sum += 10 if o[i] % 10 != 0
end
puts sum + o.last
