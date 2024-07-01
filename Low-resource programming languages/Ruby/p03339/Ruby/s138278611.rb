n = gets.to_i
lines = gets.chomp.split("")

min = 300000
n.times do |i|
  count = 0
  lines.each_with_index do |s,j|
    next if i == j
    if j < i
      count += 1 if s == "W"
    else
      count += 1 if s == "E"
    end
  end
  min = [min,count].min
end

puts min