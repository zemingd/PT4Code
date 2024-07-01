a,b,c = gets.split.map &:to_i
for i in 0..1000000
  if (a*i-c) % b ==0
    puts "YES"
    exit 0
  end
end
puts "NO"