require 'pp'
n = gets.to_i
nodes = {}
n.times do |i|
  nodes[i+1] = {to: [], color:nil}
end

(n-1).times do
  from, to, len = gets.split.map(&:to_i)
  nodes[from][:to] << [to,len]
end

# pp nodes.sort.to_h
nodes.sort.to_h.each do |from, val|
  if val[:color].nil?
    val[:color] = 1
    val[:to].each do |t|
      nodes[t[0]][:color] = t[1].even? ? 1 : -1
    end
  else
    parent_color = val[:color]
    val[:to].each do |t|
      nodes[t[0]][:color] = t[1].even? ? parent_color : -parent_color
    end
  end
end
# pp nodes

nodes.sort.each do |k,v|
  p v[:color] == 1 ? 1 : 0
end
