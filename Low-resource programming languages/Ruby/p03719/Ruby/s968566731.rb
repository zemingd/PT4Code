n,m = gets.chomp.split(" ").map(&:to_i)
array = []
m.times do
 array << gets.chomp.split(" ").map(&:to_i)
end

f_array = array.flatten
count = []
n.times do |i|
  count << f_array.count(i+1)
end
puts count