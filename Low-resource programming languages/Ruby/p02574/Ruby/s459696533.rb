N = gets.to_i
As = gets.split.map &:to_i

pc = true
m = 1
(0..(N-2)).each do |i|
    m *= As[i]
    if m.gcd(As[i+1]) != 1 then
        pc = false
        break
    end
end

if pc then
    puts "pairwise coprime"
    exit
end

g = As[0]
sc = false
(1..(N-1)).each do |i|
    g = g.gcd(As[i])
    if g == 1 then
        sc = true
        break
    end
end

puts sc ? "setwise coprime" : "not coprime"