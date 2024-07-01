n, k = gets.chomp.split(' ').map(&:to_i)
data = []
min = 1000000000000
n.times do
  data << gets.chomp.to_i
end
data.sort!()
for i in 0..(n-k)
  _min = data[i]
  _max = data[i+2]
  min = _max - _min if (_max-_min) < min
end
puts min