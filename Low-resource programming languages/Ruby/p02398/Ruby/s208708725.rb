a,b,c = gets.split(" ").map(&:to_i)

count = 0

for i in a..b do
    count += 1 if c%i == 0
end

puts count
