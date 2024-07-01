n, m, c = gets.chomp.split(" ").map(&:to_i)
bs = gets.chomp.split(" ").map(&:to_i)
res = 0

n.times do |i|
  is = gets.chomp.split(" ").map(&:to_i)
  res += 1 if is.zip(bs).map{|a,b| a*b}.reduce(&:+) + c > 0
end

puts res
