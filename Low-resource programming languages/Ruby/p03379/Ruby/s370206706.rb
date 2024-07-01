N = gets.to_i
X = gets.split.map(&:to_i)
sorted_x = X.sort

X.each do |x|
  dup = sorted_x.dup
  dup.delete_at(sorted_x.index(x))
  puts dup[dup.size / 2]
end
