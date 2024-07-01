n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = n - a.max
if n > a.max
    b = b * -1
end
count = []
a.each_with_index do |ai,i|
    count[i] = (ai - (b+i+1)).abs
end

puts count.inject(:+)