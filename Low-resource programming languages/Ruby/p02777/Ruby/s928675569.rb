s,t = gets.strip.split
s_num,t_num = gets.strip.split.map{|i| i.to_i}
u = gets

if s==u
  s_num-=1
else
  t_num-=1
end

puts s_num.to_s + " " + t_num.to_s