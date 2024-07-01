x = gets.to_i
y, z = gets.chomp.split(" ").map(&:to_i)

while y <= z
  if y % x == 0
    puts "OK"
    exit
  else
    y += 1
  end
end

puts "NG"
