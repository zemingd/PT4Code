color=[0]*9
gets
gets.split.each do{|n|
  color[min(n/400,8)]+=1
}
ans=0
(0..7).each do{|c|
  ans+=1 if color[c]>0
}
p min(ans,1)+' ';puts ans+color[8]