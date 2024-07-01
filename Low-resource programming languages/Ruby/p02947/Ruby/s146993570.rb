n = gets.to_i
s = []
n.times do |i|
	s.push gets.chomp.to_s;
end

sorted_s = []
s.each do |t|
  sorted_s.push(t.split("").sort!.join)
end
# s ["acb", "bac"]
# sorted_s ["abc", "abc"]

ret = 0
sorted_s.sort!
sorted_s.each do |a|
  ret += (sorted_s.count(a) - 1) # minus self
end
puts ret / 2