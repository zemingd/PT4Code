A,V = gets.chomp.split.map(&:to_i)
B,W = gets.chomp.split.map(&:to_i)
T = gets.to_i

if (A-B).abs <= (V-W)*T
  puts "YES"
else
  puts "NO"
end