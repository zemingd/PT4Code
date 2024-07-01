n = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
min = [a,b,c,d,e].min

if (min >= n)
  puts '5'
  exit
end

puts (n/min.to_f).ceil + 4