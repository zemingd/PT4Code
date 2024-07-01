s = gets.chomp
t = gets.chomp
a = gets.to_i
b = gets.to_i
u = gets.chomp

if s = u
  a -= 1
  puts "#{a} #{b}"
elsif t = u
  b -= 1
  puts "#{a} #{b}"
end
