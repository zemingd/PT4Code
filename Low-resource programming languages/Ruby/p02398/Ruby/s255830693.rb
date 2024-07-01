a,b,c = gets.split.map(&:to_i)
count = 0
for number in (a..b)
    if c%number == 0
        count += 1
    end
end
puts count
