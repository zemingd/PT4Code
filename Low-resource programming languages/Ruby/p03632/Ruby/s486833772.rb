a,b,c,d =  gets.split.map(&:to_i)
A = []
B = []
for num in a..b do
  A << num
end  
for num in c..d do
  B << num
end  
if (A & B).length - 1 >=0
  p (A & B).length - 1
else
  p 0
end