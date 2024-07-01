s,t = gets.split
a,b = gets.split.map(&:to_i)
u = gets.chomp

if s == u
  a -= 1
  puts "#{a} #{b}"
else
  puts "#{a} #{b-1}"
end