N=gets.to_i
array=[]
N.times{
  array << gets.to_i
}
i=1
g=0
while true
	i=array[i-1]
	g+=1
	if i==2
  		puts g
  		break
	end
    if g >= N
      	puts -1
    	break
    end
end