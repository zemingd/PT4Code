def set a, b, b_tree
  if b_tree.empty?
    return [a, b, [], []]
  elsif a <= b_tree[0]
    return [b_tree[0], b_tree[1], set(a, b, b_tree[2]), b_tree[3]]
  else
    return [b_tree[0], b_tree[1], b_tree[2], set(a, b, b_tree[3])]
  end
end

n, k = gets.split(" ").map(&:to_i)
b_tree = []
n.times do |i|
  a, b = gets.split(" ").map(&:to_i)
  b_tree = set(a, b, b_tree)
end

def find k, b_tree
  ans, k_1 = nil, k
  if not b_tree[2].empty? then
    ans, k_1 = find k, b_tree[2]
  end

  if not ans.nil? then
    return ans, nil
  end

  k_2 = k_1
  if k_1 <= b_tree[1] then
    return b_tree[0], nil
  else
    k_2 = k_1 - b_tree[1]
  end

  ans, k_3 = nil, k_2
  if not b_tree[3].empty? then
    ans, k_3 = find k_2, b_tree[3]
  end

  if not ans.nil? then
    return ans, nil
  end

  return nil, k_3
end

ans = find k, b_tree
puts ans