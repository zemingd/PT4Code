s,t = gets.chomp.split.map(&:to_s)
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp.to_s

if s == u
  a -= 1
else t == u
  b -= 1
end

puts "#{a} #{b}"