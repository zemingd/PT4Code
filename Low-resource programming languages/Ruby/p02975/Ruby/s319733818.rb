n = gets.to_i
a = gets.split.map(&:to_i)
b = Array.new(n.to_s(2).size){0}
a.each do |i|
  n.to_s(2).size.times do |j|
    b[j] += i[j]
  end
end
f = true
n.to_s(2).size.pred.times do |i|
  f = false if b[i].odd?
end
puts f ? 'Yes' : 'No'