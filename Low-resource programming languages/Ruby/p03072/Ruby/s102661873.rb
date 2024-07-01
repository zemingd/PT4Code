N=gets.to_i
h=gets.split.map(&:to_i)
mh = Array.new(N,h[0])
(N-1).times do |i| 
    mh[i+1]=[mh[i],h[i+1]].max
end
ans = 1
(N-1).times do |i|
    ans += 1 if mh[i]<=h[i+1]
end
puts ans