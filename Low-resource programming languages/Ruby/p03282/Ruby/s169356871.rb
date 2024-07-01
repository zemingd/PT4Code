s=gets.split("").map(&:to_i)
k=gets.to_i
sum=0
s.each{|suji|
    sum+=suji**5000000000000000
    if(sum>=k)
        p suji
        break
    end
}