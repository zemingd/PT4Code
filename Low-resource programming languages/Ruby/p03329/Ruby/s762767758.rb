@count=0
@n=gets.to_i
def cal(a,b)
  ans = @n / a**b
  @count += ans
  @n = @n - ans * a**b
end


cal(9,5)
cal(6,6)
cal(6,5)
cal(9,4)
cal(6,4)
cal(9,3)
cal(6,3)
cal(9,2)
cal(6,2)
cal(9,1)
cal(6,1)
cal(1,1)
puts @count
