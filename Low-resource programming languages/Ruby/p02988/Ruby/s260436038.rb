n = gets.chomp
p_array = gets.chomp.split.map(&:to_i)
count = 0
for i in 0.. p_array.length - 3
  min_2_number = [p_array[i], p_array[i+1], p_array[i+2]].sort[1]
  if min_2_number == p_array[i+1]
    count += 1
  end
end
print("#{count}\n")
