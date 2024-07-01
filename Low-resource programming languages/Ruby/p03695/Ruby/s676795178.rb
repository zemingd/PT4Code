n    = gets.to_i
ary  = gets.split.map(&:to_i)
aryC = Array.new(9, 0)

ary.each do |i|
  if i > 3200
    i = 3200
  end
  aryC[i / 400] += 1
end

changeable = aryC.pop
aryC.delete(0)

puts [[aryC.size, 1].max, aryC.size + changeable].join(" ")
