(a, b) = gets.chomp.split(' ').map(&:to_i)

if a % b == 0 then
  puts (a + b).to_s
else
  puts (b - a).to_s
end