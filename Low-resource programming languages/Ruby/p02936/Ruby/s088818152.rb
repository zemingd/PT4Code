N, Q = gets.split.map(&:to_i)
MAP = (N-1).times.map{gets.split.map(&:to_i)}
ACTION = Q.times.map{gets.split.map(&:to_i)}

tree = {}
score = (1..N).to_a.reduce({}) {|acc, n| acc[n] = 0; acc}
MAP.each do |a, b|
  tree[a] ||= []
  tree[a].push b
end


@cache = {}
def dig tree, nest
  return @cache[nest] if @cache[nest]
  arr = [nest]
  tmp = [nest]
  while tmp.length > 0 do
    ttmp = tmp.reduce([]) {|acc, child| acc.concat(tree[child] || [])}
    arr.concat ttmp
    tmp = ttmp
  end
  @cache[nest] = arr
  arr
end

ACTION.each do |nest, point|
  dig(tree,nest).each do |target|
    score[target] += point
  end
end

puts score.map{|k, v| v}.join(' ')