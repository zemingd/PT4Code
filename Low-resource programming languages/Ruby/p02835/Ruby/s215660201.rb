a, b, c = gets.chomp.split(' ').map(&:to_i)

range = ('1'..'13')


if ((a + b + c) < 21)
  puts "win"
else
  puts "bust"
end