x = gets.split.map(&:to_i)

a = 0
b = 1
while x[0] > 0 && x[2] > 0
    x[b*2] -= x[a*2+1]
    a = (a + 1) % 2
    b = (b + 1) % 2
end

if x[0] > 0
    puts "Yes"
else
    puts "No"
end