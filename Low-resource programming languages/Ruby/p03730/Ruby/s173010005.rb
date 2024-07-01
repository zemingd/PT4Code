a, b, c = gets.split.map(&:to_i)

x = a
while x <= a * b
  if x % b == c
    puts "YES"
    exit
  end
  x += a
end

puts "NO"
