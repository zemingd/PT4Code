n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
freq = Hash.new(0)
as.each do |a|
  freq[a] += 1
end

goal = freq.size - k
c = 0
freq.sort_by{|a,oc| oc}.each do |a, oc|
  break if goal <= 0
  goal -= 1
  c += oc
end
p c
