a,b = gets.split.map(&:to_i)
c =[]
for num in a..b do
  num = num.to_s
  if num == num.reverse
    c << num
  end  
end  
p c.length