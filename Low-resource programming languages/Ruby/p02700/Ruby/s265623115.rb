nums=gets.strip.split(" ").each do |i|
  i.to_i
end
t_a = nums[1].to_i
t_b = nums[0].to_i
a_a = nums[3].to_i
a_b = nums[2].to_i
s= ''
flag = true
while flag do
  a_b=a_b-t_a
  if a_b<=0
    s = "Yes"
    flag=false
  end
  t_b=t_b-a_a
  if t_b<=0 && flag
    s = "No"
    flag=false
  end
end
puts s
