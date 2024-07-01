ary = gets.split.map(&:to_i)

ary.each_with_index do |i, j|
  puts j+1 if i != j+1
end