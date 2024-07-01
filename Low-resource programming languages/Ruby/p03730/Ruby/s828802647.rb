a,b,c = gets.split.map{|n|n.to_i}
def judge(a,b,c)
    (1..b*10).each do |i|
        if (i * a) % b == c
            return "YES"
        end
    end
    return "NO"
end

puts judge(a,b,c)