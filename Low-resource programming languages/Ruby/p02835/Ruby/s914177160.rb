a=[]
a=gets.chomp.split(" ").map{|i| i.to_i}


if (a[0]+a[1]+a[2]) >= 22 then
  puts "bust"
else
  puts "win"
end

  