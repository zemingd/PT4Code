w,h,n=gets.split.map(&:to_i)
xyas=n.times.map{gets.split.map(&:to_i)}
ws=[0,w]
hs=[0,h]
xyas.each do |xi,yi,ai|
  if ai==1
    ws[0]=xi if ws[0]<xi
  elsif ai==2
    ws[1]=xi if ws[1]>xi
  elsif ai==3
    hs[0]=yi if hs[0]<yi
  else
    hs[1]=yi if hs[1]>yi
  end
end
s=(ws[1]-ws[0])*(hs[1]-hs[0])
puts s>0 ? s:0
