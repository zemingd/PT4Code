info=gets.chomp.split(" ").map(&:to_i)
def cal(a,b,x)
	num1=a/x
	if a % x==0
		num1-=1
	end
	num2=b/x
	if b % x==0
		num2-=1
	end
	return num2-num1
end
num1=cal(info[0],info[1],info[2])
num2=cal(info[0],info[1],info[3])
num3=cal(info[0],info[1],info[2].lcm(info[3]))
print((info[1]-info[0])-(num1+num2-num3*2)-1)