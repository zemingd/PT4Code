c = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
x, y = gets.split.map(&:to_i)
if c[x] == c[y] then
  puts "Yes"
else
  puts "No"
end