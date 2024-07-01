gets
data = gets.chop.split.map(&:to_i)

c = 0
target = 1
data.each do |d|
  if d == target
    target += 1
  else
    c += 1
  end
end

puts c
