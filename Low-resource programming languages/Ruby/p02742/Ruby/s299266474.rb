row,column = gets.chomp.split(" ").map(&:to_i)

if row == 1 or column == 1
  puts 1
else
  puts (row * column / 2.0).ceil
end