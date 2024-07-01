s = gets.chomp.split("")
t = gets.chomp.split("")
s_length = s.length
t_length = t.length

indexes = Array.new(t_length, -1)
t.each_with_index do |t_i, i|
  indexes[i] = s.index(t_i) || -1
end

result = 0

if indexes.include?(-1)
  result = -1
else
  (t_length-1).times do |i|
    if indexes[i] >= indexes[i+1]
      ((i+1)..(t_length-1)).each do |ii|
        indexes[ii] += s_length
      end
    end
  end
  result = indexes[t_length-1] + 1
end

puts "#{result}"