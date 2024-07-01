n    = gets.to_i
aryA = gets.split.map(&:to_i)
aryB = []

n.times do |i|
  if i % 2 == 0
    aryB.unshift(aryA.shift)
  else
    aryB.push(aryA.shift)
  end
end

if n % 2 == 0
  aryB.reverse!
end

puts aryB.join(" ")
