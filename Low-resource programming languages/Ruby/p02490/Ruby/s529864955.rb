a = Array.new
i = 0
while
a[i] = gets.to_s.split(' ').map{|temp| temp.to_i}.sort
if (a[i] == [0,0])
break
else
i += 1
end
end

i.times do |l|
print a[l][0]," ",a[l][1],"\n"
end