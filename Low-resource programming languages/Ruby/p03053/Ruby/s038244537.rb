def mat_distance(h,w,a,i,j)
  k=0
  sharp_found=0
  while(sharp_found==0)
  	for pp in -k..k
    	l=(pp.abs-k).abs
    	for qq in -l..l
          if(!( ((i+pp)<0) || ((i+pp)>=h) || ((j+qq)<0) || ((j+qq)>=w) ) )
          	if(a[i+pp][j+qq]=="#")
              sharp_found=1
          	end
          end
    	end
  	end
    k+=1
  end
  return k
end


h, w = gets.chop.split.map(&:to_i)
a=Array.new(h).map{Array.new(w,0)}
b=Array.new(h).map{Array.new(w,0)}

h.times{|i|
  line=gets.chop.split.map(&:to_s)
  a[i]=line[0].split("")
}

for i in 0...h
  for j in 0...w
    b[i][j]=mat_distance(h,w,a,i,j)
  end
end


puts b.flatten.max-1
