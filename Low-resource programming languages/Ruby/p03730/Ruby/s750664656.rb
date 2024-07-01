a, b, c = gets.chomp.split(" ").map(&:to_i)
for i in 1..b
  if a * i % b == c
    puts "YES"
    exit
  end
end

puts "NO"