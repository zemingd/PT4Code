n,l = gets.chomp.split(" ").map(&:to_i)

taste = []
n.times do |i|
  taste[i] = l + i
end

min = taste[0].abs
index = 0

taste.each_with_index do |t,i|
  if min > t.abs
    min = t.abs
    index = i
  end
end

taste.delete_at(index)
puts taste.inject(:+)