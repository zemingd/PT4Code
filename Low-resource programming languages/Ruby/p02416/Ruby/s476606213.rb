sum = 0
ARGF.each_line do |line|
  break if line == "0"
  line.length.times do |i|
    sum += line[i].to_i
  end
  puts sum
  sum = 0
end