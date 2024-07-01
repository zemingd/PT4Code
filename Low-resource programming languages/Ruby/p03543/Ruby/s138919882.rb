x = gets.chomp
a = 0
b = 0
for n in 0..1
  if x[n, 1] == x[n + 1, 1]
    a = a + 1
  end
end
for n in 1..2
  if x[n, 1] == x[n + 1, 1]
    b = b + 1
  end
end
if a == 2 or b == 2
  puts "Yes"
  exit
end
puts "No"
