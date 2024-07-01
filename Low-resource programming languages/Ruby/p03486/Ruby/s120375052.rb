s=gets.chomp.split("").map { |e| e.to_s }.sort.inject(:+)
t=gets.chomp.split("").map { |e| e.to_s }.sort.reverse.inject(:+)
 
if s<t
  puts "Yes"
else
  puts "No"
end