knum=gets.strip.to_i
nums=gets.strip.split(" ").map do |i|
  i.to_i
end
a=nums[0]
b=nums[1]
s='NG'
while(a<=b)
  if a%knum==0
    s="OK"
    break
  end
  a+=1
end
puts s