a,b,c = gets.chomp.split(" ").map(&:to_i)
for i in 0..b
  if (i*a)%b == c
    puts "YES"
    exit
  end
end
puts "NO"