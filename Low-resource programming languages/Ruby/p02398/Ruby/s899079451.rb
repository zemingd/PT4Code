a,b,c = gets.split().map(&:to_i)
result = 0
for n in a..b do
    if (c % n) == 0
       result += 1
    end
end

puts result
