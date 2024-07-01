x = gets.chomp.to_i

fx = x.to_s.split("").map(&:to_i).inject(:+)

if x % fx == 0 
  puts "Yes"
else
  puts "No"
end