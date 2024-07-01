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

  sd_n_ns_od = od.group_by{|i| i}.sort_by{|k,v| v.size}
  sd_n_ns_ev = ev.group_by{|i| i}.sort_by{|k,v| v.size}

if sd_n_ns_od.size == 1 && sd_n_ns_ev.size == 1
    answer = n/2
  else
most_n_od = sd_n_ns_od.last.first
most_n_ev = sd_n_ns_od.reject{|i| i== most_n_od}.last.first
answer1=0
answer1+=od.reject{|i| i==most_n_od}.size
answer1+=ev.reject{|i| i==most_n_ev}.size

most_n_ev = sd_n_ns_ev.last.first
most_n_od = sd_n_ns_ev.reject{|i| i== most_n_ev}.last.first
answer2=0
answer2+=ev.reject{|i| i==most_n_ev}.size
answer2+=od.reject{|i| i==most_n_od}.size

 answer = (answer1 <= answer2)?  (answer1):(answer2)
if  sd_n_ns_od[-2]  && sd_n_ns_ev[-2]
  if sd_n_ns_od.last.last.size == sd_n_ns_od[-2].last.size || sd_n_ns_ev.last.last.size == sd_n_ns_ev[-2].last.size
    answer=0
  answer+=od.reject{|i| i == sd_n_ns_od.last.first}.size
  answer+=ev.reject{|i| i == sd_n_ns_ev.last.first}.size
 end

 if  sd_n_ns_od.size == 1
   answer=answer1
 end

 if  sd_n_ns_ev.size == 1
   answer=answer2
 end
end
end
puts answer
