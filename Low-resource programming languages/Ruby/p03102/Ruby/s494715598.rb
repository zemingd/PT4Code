n,m,c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

count = 0

n.times do
  as = gets.split.map(&:to_i)
  count += 1 if as.zip(bs).map{|a,b|a*b}.reduce(:+) + c > 0
end

puts count