n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)                                                                                                                                                                                                                                                 

k = []
m.times do
  a.sort!
  b, c = gets.split.map(&:to_i)
  b.times do |i|
    a[i] = [a[i], c].max
  end
end

puts a.reduce(0) { |a, e| a + e }