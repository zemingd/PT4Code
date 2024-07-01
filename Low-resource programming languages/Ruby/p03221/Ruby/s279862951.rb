n, m = gets.split.map(&:to_i)
states = []
(n+1).times { states << [] }
py = []
m.times do
  p, y = gets.split.map(&:to_i)
  states[p] << y
  py << [p, y]
end

hash = {}
(n+1).times do |i|
  states[i].sort.each_with_index do |y, i|
    hash[y] = i+1
  end
end

py.each do |p_y|
  p, y = p_y
  puts "%06d%06d" % [p, hash[y]]
end