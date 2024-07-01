N = gets.chomp.to_i
d = Array.new(N)
str = gets.split
for i in 0...N do
    d[i] = str[i].to_i
end
d.sort!

M = N/2
puts d[M] - d[M-1]