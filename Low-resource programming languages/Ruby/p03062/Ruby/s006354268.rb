n = gets.to_i
as = gets.chomp.split(" ")
nums = []
abss = []
for i in as
  nums.push(i.to_i)
  abss.push(i.to_i.abs)
end


#print abss
flag =  nums.count{|i| i<0}
if flag%2 == 0
  puts abss.inject(:+)
else
  puts abss.inject(:+)-(abss.min*2)
end