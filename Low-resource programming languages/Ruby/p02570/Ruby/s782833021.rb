line = gets.split(' ')
line = line.map { |x| x.to_f }
 
D = line[0]
T = line[1]
S = line[2]

if T >= (D / S)
  puts "Yes"
else
  puts "No"
end