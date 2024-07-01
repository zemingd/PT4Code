s = gets.chomp.split("").map(&:to_i)
od = ev = 0
s.each_with_index do |e, i|
  od += e if i.odd?
  ev += e if i.even?
end
od_max = (s.size)/2.floor
ev_max = (s.size+1)/2.floor
puts [od_max - od + ev, ev_max - ev + od].min