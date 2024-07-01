a = gets.chomp.split(" ").map(&:to_i)
if a[1] % 2 == 0
 if a[0] >= 13
  puts a[1]
 elsif a[0] >= 6 && a[1] <= 12
  puts a[1] / 2
 else
  puts a[1]
 end
end