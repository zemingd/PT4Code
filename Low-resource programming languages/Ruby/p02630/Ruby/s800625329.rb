io = STDIN
n=io.gets.to_i
ar=io.gets.split.map(&:to_i)
q=io.gets.to_i
tally=ar.tally
tally.default=0
sum=ar.sum
q.times do 
  b,c=io.gets.split.map(&:to_i)
    cnt=tally[b]
    sum=sum+cnt*(c-b)
  puts sum
    tally[b]=0
  tally[c]=tally[c]+cnt
end
