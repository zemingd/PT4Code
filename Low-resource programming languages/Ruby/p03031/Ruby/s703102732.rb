n,m = gets.split.map(&:to_i)

s = []
m.times do 
    _,*y = gets.split.map(&:to_i)
    s << y
end

pp = gets.split.map(&:to_i)

ans = 0
(2 ** n).times do |i|
    bs = "%0#{n}b" % i
    
    k = true
    m.times do |j|
        count = 0
        s[j].each{|e| count += 1 if bs[e-1] == "1"}
        if count % 2 != pp[j]
            k = false
            break
        end
    end

    ans += 1 if k
end

puts ans