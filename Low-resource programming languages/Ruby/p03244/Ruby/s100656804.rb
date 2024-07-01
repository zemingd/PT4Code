ary=$stdin.readlines
od=Array.new
ev=Array.new
n = ary[0].to_i
array=ary[1].split.map!(&:to_i)
p=0
while p<n
  od.push(array[p]) if p%2==0
  ev.push(array[p]) if p%2==1
  p+=1
end

max_i_is_od = od.group_by{|i| i}.max_by{|k,v| v.size}
max_i_is_ev = ev.reject{|i| i == max_i_is_od.first}.group_by{|i| i}.max_by{|k,v| v.size}
answer1=0
answer1+=od.reject{|i| i == max_i_is_od.first}.size
answer1+=ev.reject{|i| i == max_i_is_ev.first}.size

max_i_is_ev = ev.group_by{|i| i}.max_by{|k,v| v.size}
max_i_is_od = od.reject{|i| i == max_i_is_ev.first}.group_by{|i| i}.max_by{|k,v| v.size}
answer2=0
answer2+=od.reject{|i| i==max_i_is_od.first}.size
answer2+=ev.reject{|i| i==max_i_is_ev.first}.size

 (answer1 <= answer2)? (puts answer1):(puts answer2)
