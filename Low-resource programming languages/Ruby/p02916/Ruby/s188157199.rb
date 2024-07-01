i = gets.chomp.to_i

As=gets.chomp.split(" ").map(&:to_i)

Bs = gets.chomp.split(" ").map(&:to_i)

Cs = gets.chomp.split(" ").map(&:to_i)
Cs << 0

sum = 0
As.each do |e|
  sum += Bs[e-1]
  sum += Cs[e-1]
end

puts sum