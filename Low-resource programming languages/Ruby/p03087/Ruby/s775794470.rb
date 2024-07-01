idx=Array.new(100100,0)
n,q=gets.split.map(&:to_i)
s=gets.chomp
cnt=0
for i in 1..s.length-1 do
  if s[i-1]=="a" && s[i]=="c"
    cnt+=1
  end
  idx[i]=cnt
end
for i in 1..q do
  a,b=gets.split.map(&:to_i)
  p idx[b-1]-idx[a-1]
end









