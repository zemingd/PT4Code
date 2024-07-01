n = gets.to_i
shot = n * 2
min,max = gets.split(" ").map(&:to_i)
while shot < min
  shot = shot + n
end
if shot >= min and max >= shot
  puts "OK"
else
  puts "NG"
end