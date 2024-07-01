n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)

a = (ary.inject(:+)/n.to_f).round
sum = 0
ary.each do |x|
    sum += (x - a)**2
end

puts sum
