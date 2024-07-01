input_value = gets
strAry = input_value.split(" ")

d = strAry[0].to_i
a = strAry[1].to_i
b = strAry[2].to_i

if a >= b then
   puts ("delicious")
elsif b - a <= d then
   puts ("safe")
else
   puts ("dangerous")
end