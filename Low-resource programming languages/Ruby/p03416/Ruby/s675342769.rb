A,B=gets.split.map(&:to_i)
r=0
(A..B).each{|i|
    if i.to_s == i.to_s.reverse
        r+=1
    end
}
puts r
