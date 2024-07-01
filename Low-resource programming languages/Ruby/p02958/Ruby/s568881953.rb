n=gets.to_i
p=gets.split.map &:to_i
sorted=(1..n).to_a
n.times{|i|
    n.times{|j|
        p[i],p[j] = p[j],p[i]
        if p == sorted
            puts "YES"
            exit
        end
        p[i],p[j] = p[j],p[i]
    }
}
puts "NO"