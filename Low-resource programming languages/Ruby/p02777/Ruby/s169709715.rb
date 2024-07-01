s, t = gets.split().map(&:to_i)
a, b = gets.split().map(&:to_i)
u = gets.chomp

if u == "red"
  puts "#{a-1} #{b}"
else
  puts "#{a} #{b-1}"
end