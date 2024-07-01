n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
pop = []
t = 0
sum = 0
ans = 'Yes'

for i in 0..n do
    sum += a[i].to_i
end

a.sort.reverse.each do |j|
    pop.push(j)
    t += 1
    break if t == m
end

pop.each do |k|
    if k < sum/(4*m)
        ans = 'No'
        break
    end
end

puts ans