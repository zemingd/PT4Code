a = gets

array =  a.split(" ")
b = array[0].to_i
c = array[1].to_i

if c>b
  box = b
  b=c
  c=box
end

for num in 1..c*b
  if c*num%b==0
  	puts c*num
    break
  end
end

  
  