color=[0]*9
gets
gets.split.each {|n|
  color[[n/400,8].min]+=1
}
ans=0
(0..7).each {|c|
  ans+=1 if color[c]>0
}
p [ans,1].min+' ';puts ans+color[8]