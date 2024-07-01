s,t = gets.chomp.split
a,b = gets.split.map(&:to_i)
u = gets.chomp
if u == s
  puts "#{a-1} #{b}"
else
  puts "#{a} #{b-1}"
end