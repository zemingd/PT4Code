a,b = gets.chomp.split(" ").map(&:to_i);
max = 0
min = 0
if a > b
  max = a
  min = b
else
  max = b
  min = a
end

if max - 1 >= min
    puts max * 2 - 1
else
    puts max + min
end