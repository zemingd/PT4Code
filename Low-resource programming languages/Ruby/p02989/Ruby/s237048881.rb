n = gets.chomp.to_i
d_array = gets.chomp.split.map(&:to_i)
d_array.sort!
print("#{d_array[n/2] - d_array[n/2 -1]}\n")
