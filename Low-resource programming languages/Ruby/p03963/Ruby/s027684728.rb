line_array=gets.split(" ")

if line_array[0].to_i == 1
  puts k
elsif line_array[1].to_i == 1
  puts 1
else
  puts line_array[1].to_i * ((line_array[1].to_i - 1) ** (line_array[0].to_i - 1))
end