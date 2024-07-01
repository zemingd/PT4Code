n = gets.to_i
ws = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:last)
t = 0
ans = "Yes"
ws.each do |a,b|
  t += a
  if t > b 
    ans = "No"
    break
  end
end
puts ans