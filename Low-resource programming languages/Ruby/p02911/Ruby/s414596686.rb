N, K, Q = gets.split.map(&:to_i)
A = Q.times.map{gets.to_i}
P = Array.new(N, K)

A.each do |a|
    P[a-1] +=1
end

P.each do |p|
    puts p - Q > 0 ? "Yes" : "No"
end