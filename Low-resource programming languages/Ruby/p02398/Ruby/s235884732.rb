a,b,c = gets.split(" ").map(&:to_i)
count = 0
for d in a..b
    count += 1 if c % d == 0
end

puts count


