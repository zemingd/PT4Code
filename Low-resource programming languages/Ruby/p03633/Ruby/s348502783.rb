input = readlines()

n = input.shift.chomp.to_i
list = []
(1..n).each do |x|
  list.push(input.shift.chomp.to_i)
end

tmp = nil
list.each do |l|
  if tmp.nil?
    tmp = l
    next
  end
  tmp = l.lcm(tmp)
end

puts tmp
