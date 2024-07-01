s = gets.split(//u).sort.inject(:+).delete("\n")
t = gets.split(//u).sort.reverse.inject(:+).delete("\n")
if s >= t
then
  puts "No"
else
  puts "Yes"
end