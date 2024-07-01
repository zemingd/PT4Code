a, b, c = gets.chomp.split.map &:to_i
b.times do |i|
  if (a*i)%b == c
    puts "YES"
    exit
  end
end
puts "NO"