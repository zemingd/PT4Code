s, t = gets.chomp.split(" ")
a, b = gets.chomp.split(" ").map {|c| c.to_i}
u = gets.chomp

if u == s
  puts (a-1).to_s + " " + b.to_s
else
  puts a.to_s + " " + (b-1).to_s
end