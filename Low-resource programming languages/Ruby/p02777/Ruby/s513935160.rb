s,t = gets.split(' ').map(&:chomp)
a,b = gets.split(' ').map(&:to_i)
u = gets.chomp


p s
p u
if s == u
  a -= 1
elsif t == u
  b -= 1
end

puts "#{a} #{b}"