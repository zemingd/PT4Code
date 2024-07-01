n = gets.chop.to_i
c = 0
target = 1
n.times do
  a = gets.chop.to_i
  if a == target
    target += 1
  else
    c += 1
  end
end

puts c
