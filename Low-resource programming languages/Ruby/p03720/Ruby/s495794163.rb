n,m = gets.split.map(&:to_i)
a = []
b = Array.new(n,0)

m.times do
  a << gets.split.map(&:to_i)
end

a.each do |aa|
  b[aa[0] -1] += 1
  b[aa[1] -1] += 1
end
puts b
