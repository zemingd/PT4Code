n=gets.to_i
in1=gets.chomp.split(" ").map(&:to_i)
min=200
num1=0
num2=0
for i in 1..n-1 do
 for j in 0...i do
  num1=num1+in1[j]
 end
 for k in i...n do
  num2=num2+in1[k]
 end
 if min>(num1-num2).abs
 min=(num1-num2).abs
 end
 
end
puts min