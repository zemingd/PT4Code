n = gets.to_i
f = []

n.times do
  x = gets.to_i
  if f.include?(x)
    f.delete(x)
  else
    f.push(x)
  end
end

puts f.count