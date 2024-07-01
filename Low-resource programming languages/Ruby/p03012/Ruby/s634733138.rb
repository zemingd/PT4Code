N=gets.to_i
as=gets.split.map(&:to_i)
res=Float::INFINITY
(N-1).times do |i|
    cnt=(as[0..i].inject(&:+)-as[i+1..N-1].inject(&:+)).abs
    res=cnt<res ? cnt : res
end