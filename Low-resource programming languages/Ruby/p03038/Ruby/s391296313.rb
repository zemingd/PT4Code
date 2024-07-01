N,M=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
cs,bs=M.times.map{gets.split.map(&:to_i)}.transpose
card=Hash.new{0}
as.each do |e|
  card[e]+=1
end
M.times do |i|
  card[bs[i]]+=cs[i]
end

cnt=0
pos=-1
key=card.keys.sort.reverse
last=0
while cnt<=N
  pos+=1
  count=card[key[pos]]
  last+=count*key[pos]
  cnt += count
end
last-=(cnt-N)*key[pos]
puts last
