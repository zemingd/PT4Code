n=gets.to_i
as=gets.split.map(&:to_i).sort
color=[0]*8
over=0
as.each do |rate|
  if rate<400
    color[0]=1
  elsif rate<800
    color[1]=1
  elsif rate<1200
    color[2]=1
  elsif rate<1600
    color[3]=1
  elsif rate<2000
    color[4]=1
  elsif rate<2400
    color[5]=1
  elsif rate<2800
    color[6]=1
  elsif rate<3200
    color[7]=1
  else
    over+=1
  end
end

cnum=color.inject(:+)
if cnum>0
  puts [cnum,cnum+over].join(" ")
else
  puts [1,over].join(" ")
end
