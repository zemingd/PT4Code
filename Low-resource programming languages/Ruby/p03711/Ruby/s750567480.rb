x, y = gets.split.map(&:to_i)
ary = [4, 6, 9, 11]
ary2 = [1, 3, 5, 7, 8, 10, 12]

if ary.include?(x) && ary.include?(y) || ary2.include?(x) && ary2.include?(y)
  puts "Yes"
else
  puts "No"
end