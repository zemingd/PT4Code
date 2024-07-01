s, t = gets.chomp.split(' ')
a, b = gets.chomp.split(' ').map(&:to_i)
u = gets

if (s == u)
  puts "#{a-1} #{b}"
else
  puts "#{a} #{b-1}" 
end
