arr = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

max = b.max
half = (max + 1) / 2
diff = []
index = 0
b.each_with_index do |val, i|
  next if val == max
  diff[i] = (half - val).abs
  index = diff[index] > diff[i] ? i : index
end
puts "#{max} #{b[index]}"
