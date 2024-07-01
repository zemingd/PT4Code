n = gets.to_i
p = gets.split.map(&:to_i)

for i in 1..n do
    if p[i-1] != i
        q = p[p[i-1]-1]
        p[p[i-1]-1] = p[i-1]
        p[i-1] = q
        break
    end
end
p p
for i in 1..n do
    if p[i-1] != i
        puts "NO"
        exit
    end
end
puts "YES"     
