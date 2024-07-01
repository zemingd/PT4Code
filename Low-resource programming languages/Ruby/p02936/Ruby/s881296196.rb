n, q = gets.split.map(&:to_i)
a_arr = (n - 1).times.map{gets.split.map(&:to_i)}
p_arr = q.times.map{gets.split.map(&:to_i)}

nodes = []
n.times do |m|
  leaves = [m]
  a_arr.each do |a|
    root = a.first
  	leaf = a.last
 	if leaves.include?(root)
      leaves.push leaf
  	end
  end
  nodes[m] = leaves
end

ret = []
p_arr.each do |p|
  root = p.first
  point = p.last
  
  nodes[root].each do |node|
    ret[node] = 0 if ret[node].nil?
    ret[node] += point
  end
end
ret.shift
puts ret.join(" ")