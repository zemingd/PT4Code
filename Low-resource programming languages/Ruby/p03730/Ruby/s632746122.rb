a, b, c = gets.chomp.split.map(&:to_i)
t=0
for i in 1..b
  t= a * i
  if t % b == c
    puts "YES"
    exit
  end
end
puts "NO"
  