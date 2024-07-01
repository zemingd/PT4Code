a,b,c = gets.chomp.split(" ").map(&:to_i)

n = 2
while n < b
  if (a * n) % b == c
    puts "YES"
    exit
  end
  n += 1
end

puts "NO"
