n,m = gets.split.map(&:to_i)
a = []
b = Hash.new(0)
m.times do
  a << gets.split.map(&:to_i)
end

a.each do |aa|
  b[aa[0]] += 1
  b[aa[1]] += 1
end

b.sort.each {|x| puts x[1]}
