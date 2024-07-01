N = gets.to_i
p = gets.split.map(&:to_i)
q = p.sort
c = Array.new(N, true)
p.each_with_index do |d,i|
    if d == q[i] then
        c[i] = true
    else
        c[i] = false
    end
end
if c.count(false) <= 2 then
    puts 'YES'
else
    puts 'NO'
end