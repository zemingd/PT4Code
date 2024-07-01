N = gets.to_i
as=N.times.map{gets.to_i}
hs=Hash.new(0)
as.each do |i|
    hs[i]+=1
    hs[i]%=2
end
p hs.values.inject(:+)
