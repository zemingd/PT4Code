N =gets.to_i
as = N.times.map {gets.to_i}
cnt=as[0]
for i in 1...N
    cnt = cnt.lcm(as[i])
end
puts cnt