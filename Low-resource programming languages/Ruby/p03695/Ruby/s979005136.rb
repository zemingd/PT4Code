n = gets.to_i
ar = gets.split.map(&:to_i)
colors = Array.new(8) {0}
monster = 0

ar.each do |num|
  div = num / 400
  if div < 8
    colors[div] = 1
  else
    monster += 1
  end
end

c = colors.count {|v| v == 1}
 
if monster > 0
  c = 1 if c == 0
  puts "#{c} #{c+monster}"
else
  puts "#{c} #{c}"
end