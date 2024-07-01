line = readlines.map(&:to_i)
target = [1,2,3]

line.each do |w|
if w == 1 
target.delete(1)
end
if w == 2
target.delete(2)
end
if w == 3
target.delete(3)
end
end

puts  target
