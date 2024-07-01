s, t = gets.split
a, b = gets.split.map(&:to_i)
u    = gets.chomp

if u == s
  a -= 1
else
  b -= 1
end

puts "#{a} #{b}"

load __FILE__ until $stdin.eof?
