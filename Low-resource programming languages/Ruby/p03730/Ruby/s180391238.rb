a, b, c = gets.split.map(&:to_i)

if 1.upto(b).all? { |i| a * i % b != c }
  puts "NO"
else
  puts "YES"
end
