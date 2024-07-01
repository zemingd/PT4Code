N = gets
s = 0
N.each_char do |c|
   s += c.to_i
end

puts N.to_i % s == 0 ? "Yes" : "No"
