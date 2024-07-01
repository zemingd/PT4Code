l=[]
1000.times do |i|
  l << i**2
end
puts l.include?(gets.split.join.to_i) ? :Yes: :No
