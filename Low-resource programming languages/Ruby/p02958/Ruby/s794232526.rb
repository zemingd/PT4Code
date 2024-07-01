n = gets.to_i
a = gets.split.map(&:to_i)

puts (n.times.map{|i|a[i]!=i+1}.count(true)<3)?"YES":"NO"
