a = gets.chomp.split(" ").map(&:to_i)
b = [a[1],a[3]].min-[a[0],a[2]].max
if b >= 0
  puts b
else
  puts 0
end