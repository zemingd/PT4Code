N=gets.to_i
P=gets.split.map(&:to_i)
checker=N
count=0

P.each {|n|
    if checker>=n
        count+=1
        checker=n
    end
}

puts count