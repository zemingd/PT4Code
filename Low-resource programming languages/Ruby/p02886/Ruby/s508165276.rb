n = gets.chomp.to_i
d = gets.split(" ").map(&:to_i)

i = 0
j = i + 1

a = 0

while d[i]
    if d[j]
        a = a + d[i]*d[j]
        j += 1
    else
        i += 1
        j = i + 1
    end
end

puts a