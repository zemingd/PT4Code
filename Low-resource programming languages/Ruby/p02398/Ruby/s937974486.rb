a,b,c = gets.split.map &:to_i
counter = 0

for loopCounter in a .. b
    if c % loopCounter == 0
        counter += 1
    end
end

puts counter
