n = gets.to_i
v = (1..(n-1)).map{ gets.strip.split(" ").map(&:to_i) }

nodes = {}

v.each do |e|
  nodes[e[0]] ||= []
  nodes[e[1]] ||= []
  nodes[e[0]] << { to: e[1], length: e[2] }
  nodes[e[1]] << { to: e[0], length: e[2] }
end

$result = {}

def s(nodes, index, is_white)
  # p "#{index} #{is_white}"
  $result[index] = is_white
  if nodes[index].nil?
    return []
  end
  nodes[index].map do |n|
    [n[:to], n[:length].even? ? is_white : !is_white]
  end
end

que = [[1, true]]

while que.size > 0
  index, is_white = que.shift
  if $result[index].nil?
    que += s(nodes, index, is_white)
  end
end

(1..n).each do |i|
  puts ($result[i] ? 1 : 0)
end
 
