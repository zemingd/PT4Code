x, y, z, k= gets.chomp.split(" ").map(&:to_i)


while x > 0 || z > 0 do
  z -= y
  if z <= 0
    puts "Yes"
    break
  end
  x -= k
  if x <= 0
    puts "No"
    break
  end
end