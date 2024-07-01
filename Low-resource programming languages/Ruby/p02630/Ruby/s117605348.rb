n=gets.to_i
as=gets.split.map(&:to_i)
q=gets.to_i
sum=as.sum
ta=as.tally
q.times do |i|
  b,c=gets.split.map &:to_i
  v=ta[b].to_i
  sum += (c-b)*v
  ta[b]=0
  ta[c]=ta[c].to_i+v
  p sum
end