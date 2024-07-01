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
(n.size).times do |i|
  #puts "-- #{n[i]}"
  c_list.each do |dn|
    if(i==0)then
      next if(dn==0)
    end
    if(n[i].to_i <= dn)then
      s += dn.to_s
      break
    end
  end
end
puts s