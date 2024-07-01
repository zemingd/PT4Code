n = gets.to_i
lines = gets.chomp.split("")

count = lines.count("E")

countT = 0
lines.each_with_index do |s,i|
  next if i == count+1
  if i < count+1
    countT += 1 if s == "W"
  else
    countT += 1 if s == "E"
  end
end

puts [count,countT].min