n = gets.to_i
p = gets.split.map(&:to_i)

count = 0

a = p[-1]

p.each_with_index do |elem, i|
  next if (i == 0) || (elem == a)
  temp_array = [p[i-1], p[i], p[i+1]]
  count += 1 if (temp_array.sort[1] == elem)
end

p count
