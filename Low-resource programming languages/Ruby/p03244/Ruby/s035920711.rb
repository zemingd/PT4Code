N = gets.to_i
A = gets.split.map(&:to_i)

odd, even = 2.times.map{ Hash.new(0) }

A.each_with_index do |v,i|
  if i.odd?
    odd[v] += 1
  else
    even[v] += 1
  end
end

co = N / 2
ce = N - co

wo = odd.max_by(2){|k,v| v}
we = even.max_by(2){|k,v| v}

if we.size == 1 && wo.size == 1 && we.first[0] == wo.first[0]
  puts [we.first[1], wo.first[1]].min
else
  puts [ 
      we.first[0] == wo.first[0] ? N : ce - we.first[1] + co - wo.first[1], 
      we.first[0] == wo.last[0]  ? N : ce - we.first[1] + co - wo.last[1] ,
      we.last[0]  == wo.first[0] ? N : ce - we.last[1]  + co - wo.first[1],
      we.last[0]  == wo.last[0]  ? N : ce - we.last[1]  + co - wo.last[1] 
    ].min
end
