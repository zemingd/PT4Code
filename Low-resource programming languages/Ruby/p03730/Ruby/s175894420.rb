a, b, c = gets.chomp.split(" ").map(&:to_i)

for i in 0..b do
  if (a*i)%b == c
    puts "YES"
    exit
  end
end
puts "NO"
