n = gets.to_i
as = gets.split("\s").map(&:to_i)
hash = Hash.new(0)
as.each do |a|
  hash[a] += 1
end
 
(1..n).each do |i|
  puts hash[i]
end