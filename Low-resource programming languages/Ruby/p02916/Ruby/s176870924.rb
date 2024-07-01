i = gets.chomp.to_i

As=gets.chomp.split(" ").map(&:to_i)

Bs = gets.chomp.split(" ").map(&:to_i)

Cs = gets.chomp.split(" ").map(&:to_i)
Cs << 0

befo = 0
sum = 0
As.each do |e|
  if e == befo + 1
  	sum += Cs[befo-1]
  end
  sum += Bs[e-1]
  befo = e
end

puts sum