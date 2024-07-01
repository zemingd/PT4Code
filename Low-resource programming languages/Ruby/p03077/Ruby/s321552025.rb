N = gets.to_i
as = 5.times.map{gets.to_i}
t = 0
5.times do |i|
    t = [t+1, (N-1)/as[i]+1+i].max
end
puts t