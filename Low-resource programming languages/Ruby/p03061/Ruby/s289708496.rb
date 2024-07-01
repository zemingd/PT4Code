def gcd(_num1, _num2)
  if _num1<0
  	_num1*=-1
  end
  if _num2<0
  	_num2*=-1
  end
  while _num2 > 0
   _num1,_num2=_num2,_num1%_num2
  end
  return _num1
end
 
def ngcd(_list)
  num = 0
  _list.each{ |a|
    num = gcd(num, a)
  }
  return num
end
n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)
list_gcd_f=[]
list_gcd_b=[]
count_f=0
count_b=0
n.times do|i|
	if i<=((n-1)/2)
		list_gcd_f[count_f]=a[i]
		count_f+=1
	else
		list_gcd_b[count_b]=a[i]
		count_b+=1
	end
end
gcd_f=ngcd(list_gcd_f)
gcd_b=ngcd(list_gcd_b)
list_gcd=[]
n.times do|i|
	list=[]
	counter=0
	start_num=0
	goal_num=0
	if i<=((n-1)/2)
		start_num=0
		goal_num=(n-1)/2
	else
		start_num=(n-1)/2+1
		goal_num=n-1
	end
	for j in start_num..goal_num
		if i==j
		next
		end
		list[counter]=a[j]
		counter+=1
	end
	gcd_cur=ngcd(list)
	if i<=((n-1)/2)
		list_gcd[i]=gcd(gcd_cur,gcd_b)
	else
		list_gcd[i]=gcd(gcd_cur,gcd_f)
	end
end
print list_gcd.max