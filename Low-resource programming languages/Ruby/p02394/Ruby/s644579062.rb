input = gets.split(" ").map(&:to_i)
W = input[0]
H = input[1]
x = input[2]
y = input[3]
r = input[4]

if ( x >= r && y >= r ) && ( W - x >= r && H - y >= r )
  puts "Yes"
else
  puts "No"
end
