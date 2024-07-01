a = gets.chomp.split(" ").map(&:to_i)
count = 0
for i in a[0]..a[1]
  if i >= a[2] && i <= a[3]
    count += 1
  end
end
puts count