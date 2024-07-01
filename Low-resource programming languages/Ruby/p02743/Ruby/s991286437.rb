a,b,c = gets.split.map(&:to_i)
# a + b + 2 * ((a*b)**0.5) < c
# 2 * ((a*b)**0.5) < c-a-b
f = 4 * (a*b)
g = (c-a-b)**2

if c - a - b <= 0
    puts "No"
    exit
end
# p [f,g]
puts 4 * (a*b) < (c-a-b)**2 ? "Yes" : "No"