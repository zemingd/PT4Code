n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = Hash.new(0)
n.times do |i|
  b[a[i]] += 1
end
a = a.uniq.delete_if{|num|b.select{|k,v|v < 2}.keys.include?(num)}.unshift([0,0]).flatten.sort
puts a[-1]*a[-2]