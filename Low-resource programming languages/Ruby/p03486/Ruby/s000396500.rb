s=gets.chomp.split("").map { |e| e.to_i }.inject(:+)
t=gets.chomp.split("").map { |e| e.to_i }.inject(:+)

if s<t
  puts "Yes"
else
  puts "No"
end
