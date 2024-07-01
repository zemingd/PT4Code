N,M,C = gets.split(" ").map{|i|i.to_i}
B = gets.split(" ").map{|i|i.to_i}
a = []
N.times do |i|
    a.push(gets.split(" ").map{|i|i.to_i})
end

c = 0
a.collect do | i |
    lst = []
    M.times do |j|
        lst.push(i[j] * B[j])
    end
    r = lst.reduce(:+)
    if r + C > 0 then
        c+=1
    end
end

puts c