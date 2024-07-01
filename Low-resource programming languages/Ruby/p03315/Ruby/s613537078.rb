array=Array.new(4,0)
num=0
0.upto(3)do|i|
array[i]=gets.chomp
if array[i] == '+' then
  num+=1
elsif array[i] == '-' then
  num-=1
end

end
puts num