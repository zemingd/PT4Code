str=gets.chomp
num=str.split
ad=num[0].to_i
bd=num[1].to_i
ans1=ad/bd
ans2=ad%bd
af=ad.to_f
bf=bd.to_f
ans3=af/bf
puts "#{ans1} #{ans2} #{ans3}"