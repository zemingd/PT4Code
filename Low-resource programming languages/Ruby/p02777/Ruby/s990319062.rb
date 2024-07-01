s = gets.chomp
t = gets.chomp
a,b= gets.split.map(&:to_i)
u = gets.split

if s = u
  a -= 1
  puts a b
elsif t = u
  b -= 1
  puts a b
end