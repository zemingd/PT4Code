a, b, c = gets.chomp.split.map(&:to_i)

1.step(100,a) do |i|
 if a * i % b == c
  puts "YES"
  exit
 end
end
puts "NO"