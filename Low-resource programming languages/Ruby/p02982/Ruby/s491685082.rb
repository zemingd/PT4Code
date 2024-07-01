n,d = gets.split.map(&:to_i)
z = []
n.times do
  a = gets.split.map(&:to_i)
  z << a
end
count = 0
z.combination(2).to_a.each do |a,b|
  sum = 0
  d.times do |i|
    sum += (a[i] - b[i])**2
  end
  count += 1 if Math.sqrt(sum).to_s.split('.')[-1].to_i.zero?
end
puts count