memnum = gets.chomp.to_i
restnum = []
sum = 0
5.times do
  restnum << gets.chomp.to_i
end
minnum = restnum.min
if memnum > minnum && (memnum % minnum) != 0
  puts (5 + memnum / minnum)
elsif memnum > minnum && (memnum % minnum) == 0
  puts (4 + memnum / minnum)
else
  puts 5
end
