s=gets.chomp
cnt=0
s.size.times do |i|
  if s[i].to_i!=i%2
    cnt+=1
  end
end
if cnt > s.size/2
  cnt=s.size-cnt
end  
p cnt