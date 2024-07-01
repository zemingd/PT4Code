w,h,n=gets.split.map(&:to_i)
ws=[0,w]
hs=[0,h]
n.times do
  xi,yi,ai=gets.split.map(&:to_i)
  if ai==1
    ws[0]=[ws[0],xi].max
  elsif ai==2
    ws[1]=[ws[1],xi].min
  elsif ai==3
    hs[0]=[hs[0],yi].max
  else
    hs[1]=[hs[1],yi].min
  end
end
puts [ws[1]-ws[0],0].max*[hs[1]-hs[0],0].max
