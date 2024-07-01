n = gets.to_i
lines = gets.chomp.split("")

c = lines.count("E")
if n%2 == 0
  c += 1
end

countT = 0
lines.each_with_index do |s,i|

  next if i == c
  if i < c
    countT += 1 if s == "W"
  else
    countT += 1 if s == "E"
  end
end

puts [lines.count("E"),countT].min