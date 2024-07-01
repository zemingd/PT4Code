n = gets.chomp.to_i
l_arr=[]
min = 10**15+1

5.times do|i|
  l_arr << gets.chomp.to_i
  if l_arr[i]<min then
    min = l_arr[i]
  end
end

if (n%min)==0 then
    m = (n/min)
else
    m = (n/min)+1
end
puts 4+m