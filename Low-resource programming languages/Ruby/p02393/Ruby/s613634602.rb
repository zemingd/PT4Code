input=gets.chomp
num=Array.new
for i in 0..input.length do
  num[i]=input[i].to_i
end
num.sort!
printf("%d %d %d\n",num[3],num[4],num[5])