s, t = gets.chomp.split(" ");
a, b = gets.chomp.split(" ").map(&:to_i);
u = gets

if s.chomp == u.chomp
  a -=1
else
  b -=1
end

puts "#{a} #{b}"