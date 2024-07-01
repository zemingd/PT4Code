a, v = gets.chomp.split(" ").map(&:to_i)
b, w = gets.chomp.split(" ").map(&:to_i)
t = gets.to_i

dif = b - a
fast = v - w

if fast <= 0 
  puts"NO" 
else
  time = dif.abs / fast.to_f
  if time <= t
    puts "YES"
  else
    puts "NO"
  end
end