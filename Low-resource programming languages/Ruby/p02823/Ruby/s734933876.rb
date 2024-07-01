ary1 = gets.chomp.split(" ").map(&:to_i)
n = ary1[0]
a = ary1[1]
b = ary1[2]
dist = (a-b).abs

if dist % 2 ==0
  puts (a-b)/2
else
  time_l = [a-1,b-1].max
  time_r = [(n-a).abs,(n-b).abs].max
  puts [time_l,time_r].min
end
