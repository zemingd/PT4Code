num=0

array=gets
array=array.split(/\s*/)
0.upto(3)do|i|
if array[i] == '+' then
  num+=1
elsif array[i] == '-' then
  num-=1
end

end
puts num