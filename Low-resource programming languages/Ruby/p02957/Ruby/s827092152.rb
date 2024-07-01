n = gets.strip.split.map(&:to_i)
if (n[0] + n[1])%2 == 0
  puts (n[0] + n[1])/2
else
  puts "IMPOSIVEL"
end