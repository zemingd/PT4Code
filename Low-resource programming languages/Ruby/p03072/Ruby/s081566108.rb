n = gets.to_i
h = gets.split.map &:to_i

max = 0
count = 0
h.each do |hi|
  if hi < max
    next
  else
    max = hi
    count+=1
  end
end

puts count
