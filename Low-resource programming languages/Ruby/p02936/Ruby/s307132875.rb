n, q = gets.split().map(&:to_i)

$count = []
$tree = []
(n+1).times do
  $tree << []
  $count << 0
end

(n-1).times do
  a, b = gets.split().map(&:to_i)
  $tree[a] << b
end

def plus(p, q)
  $tree[p].length.times do |j|
    $count[$tree[p][j]] += q
    if $tree[$tree[p][j]].length > 0 then
      plus($tree[p][j], q)
    end
  end
end

q.times do
  p, q = gets.split().map(&:to_i)
  $count[p] += q
  plus(p, q)
end

$count.shift

print $count.join(" ")