n = gets.chomp.to_i
s_arr = gets.chomp.split(" ")

if s_arr.any?{|s| s == "Y"} then
  puts "Four"
else
  puts "Three"
end

