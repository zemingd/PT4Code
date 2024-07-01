n,k = gets.split("\s").map {|s|s.to_i}
d_list = gets.split("\s").map {|s|s.to_i}
a_list = [0,1,2,3,4,5,6,7,8,9]

c_list = []
a_list.each do |a|
  dbl = false
  d_list.each do |d|
    dbl = true if(a==d)
  end
  c_list.push(a) if(dbl==false)
end
c_list.sort!

s = ""
n = n.to_s
ignore_flag = false
(n.size).times do |i|
  #puts "-- #{n[i]}"
  c_list.each do |dn|
    if(i==0)then
      next if(dn==0)
    end
    #if(n[i].to_i <= dn)then
    #  s += dn.to_s
    #  break
    #end
    if(ignore_flag==true)then
      s += dn.to_s
      break
    elsif(n[i].to_i == dn)then
      s += dn.to_s
      break
    elsif(n[i].to_i < dn)then
      s += dn.to_s
      ignore_flag = true
    end
  end
end

if(c_list[0]==0)then
  min = c_list[1]
else
  min = c_list[0]
end

if(s.size!=0)then
  puts s
else
  s += min.to_s
  (n.size).times do |i|
    c_list.each do |dn|
      s += dn.to_s
      break
    end
  end
  puts s
end