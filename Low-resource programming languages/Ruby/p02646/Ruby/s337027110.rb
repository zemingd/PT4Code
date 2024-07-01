A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i

if W >= V
  puts 'NO'
  exit
end

if (V - W) * T >= (B - A)
  puts 'YES'
else
  puts 'NO'
end
