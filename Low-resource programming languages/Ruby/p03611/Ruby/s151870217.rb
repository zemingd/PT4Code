N = gets.to_i
a = gets.split.map(&:to_i)

a3 = [0,0]
max = 0
(0..100000).each do |i|
  a3.insert(2,a.count(i))
  if a3.inject(:+) > max
    max = a3.inject(:+)
  end
  a3.delete_at(0)
end

puts max