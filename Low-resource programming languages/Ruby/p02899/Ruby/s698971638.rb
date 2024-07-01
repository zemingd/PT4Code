n = gets.to_i
s = gets.split.map.with_index do |arrival, attendance|
  [arrival.to_i, attendance + 1]
end
s.sort!
s.each do |li|
  print li[1]
  print " "
end
