a,b,c = gets.split.map(&:to_i)

i = a
div = 0

while i <= b
    if c%i == 0
        div +=1
    end
    i += 1
end

puts div.to_s
