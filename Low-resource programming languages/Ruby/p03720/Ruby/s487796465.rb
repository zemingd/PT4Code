n, m = gets.chomp.split.map(&:to_i)
array = []
m.times { array << gets.chomp.split.map(&:to_i) }

array.flatten!

ret = []
(1..n).each do |i|
  ret << array.select { |a| a == i }.size
end
ret.each {|r| puts r }
