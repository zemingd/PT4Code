a, b, c = gets.split.map(&:to_i)

if 1.upto(b).any? { |i| a * i % b == c }
  puts "YES"
else
  puts "NO"
end
