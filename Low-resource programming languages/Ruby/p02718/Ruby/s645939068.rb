n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
pop = []
t = 0
ans = 'Yes'

a.sort.reverse.each do |i|
    pop << i
    t += 1
    break if t == m
end

pop.each do |i|
    if i <= a.sum*1/(4*m)
        ans = 'No'
        break
    end
end

puts ans