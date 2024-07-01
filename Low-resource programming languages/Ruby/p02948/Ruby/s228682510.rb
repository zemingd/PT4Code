n,m = gets.split.map(&:to_i)
ba = []
readlines.map do |i|
  temp = i.chomp.split.map(&:to_i)
  ba << [temp[1], temp[0]]
end

sorted = ba.sort{|a,b| b <=> a}
a = sorted.map{|i| i[1]}
#puts sorted.to_s

sum = 0
m.downto(1) do |day|
  idx = a.bsearch_index{|i| i <= m-day+1}
  next if idx.nil?

  sum += sorted.delete_at(idx)[0]
  #puts sum
  a.delete_at(idx)
end

puts sum
