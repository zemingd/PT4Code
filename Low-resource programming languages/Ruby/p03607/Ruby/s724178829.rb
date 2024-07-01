N = gets.to_i
a = Hash.new(0)
N.times do
  a[gets.to_i] += 1
end
p a.values.count(&:odd?)