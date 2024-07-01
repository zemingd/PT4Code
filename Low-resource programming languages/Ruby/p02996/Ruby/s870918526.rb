N=gets.to_i
ABS=N.times.map {gets.split.map(&:to_i)}

ABS = ABS.sort
ABS = ABS.sort {|a,b| a[1] <=> b[1]}

time=0
flag=0
ABS.each do |ab|
  time+=ab[0]
  flag = 1 if time > ab[1]
end

if flag == 1
  puts "No"
else
  puts "Yes"
end
