i = gets.to_i
s = gets.split(" ").map(&:to_i)
k =[]
s.map.with_index {|n,count|
    k << [count+1,n]
}
ab = k.sort_by { |k, v| v }.to_a
i.times {|n|print "#{ab[n][0]} "}  