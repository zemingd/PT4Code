N=gets.to_i
as=gets.split.map(&:to_i)
hash=Hash.new{0}
as.each do |e|
    hash[e]+=1
end
cnt=0
for i in 0..as.max
    j=hash[i-1]+hash[i]+hash[i+1]
    cnt=cnt<j ? j : cnt
end
puts cnt