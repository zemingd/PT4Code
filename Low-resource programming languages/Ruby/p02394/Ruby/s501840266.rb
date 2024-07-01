W = gets.chomp.to_i
H = gets.chomp.to_i
x = gets.chomp.to_i
y = gets.chomp.to_i
r = gets.chomp.to_i


if x >= r and x <= W - r && y >= r and y <= H - r
  puts "Yes"
else
  puts "No"
end