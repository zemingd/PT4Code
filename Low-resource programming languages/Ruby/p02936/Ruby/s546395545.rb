n,q = gets.split.map(&:to_i)

$tree = Array.new(n).map{Array.new()}
$cnt = Array.new(n, 0)

(n-1).times do
    a,b = gets.split.map(&:to_i)
    $tree[a-1].push(b-1);
    $tree[b-1].push(a-1);
end

q.times do
    p,x = gets.split.map(&:to_i)
    $cnt[p-1] += x
end

def dfs(n, x, parent)
    $cnt[n] += x
    $tree[n].each do |child|
        if child != parent then
            dfs(child, $cnt[n], n)
        end
    end
end

dfs(0, 0, -1)

puts $cnt.join(" ")
