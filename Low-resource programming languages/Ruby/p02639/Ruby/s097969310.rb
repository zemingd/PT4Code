line = gets.split(' ')
line.length.times do |k|
  puts k+1 if line[k]=="0"
end