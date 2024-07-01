h, w = gets.chomp.split.map(&:to_i)

ary = h.times.map do
  line = gets.chomp
  if line.squeeze == "."
    next
  else
    line.chars
  end
end.compact

ary = ary.transpose.map do |line|
  if line.uniq == ["."]
    next
  else
    line
  end  
end.compact.transpose

ary.each do |line|
  puts line.join
end