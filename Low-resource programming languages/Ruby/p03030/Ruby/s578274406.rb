l = []
gets.to_i.times do |i|
  n,s = gets.chomp.split
  l << [n, s.to_i, i+1]
end
puts l.sort_by{|a,b,c| -b}.sort_by{|a,b,c| a}.transpose[2]