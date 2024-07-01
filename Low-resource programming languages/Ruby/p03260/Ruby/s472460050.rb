A, B = gets.split(" ").map(:&to_i)

if ((A * B).odd?) then
  puts "Yes"
else
  puts "No"
end