N,x=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
cnt=0
s=0
as.each do |i|
  s+=i
  break if x<s
  cnt+=1
end
if N==cnt
  cnt-=1 if s!=x
end
p cnt
  
