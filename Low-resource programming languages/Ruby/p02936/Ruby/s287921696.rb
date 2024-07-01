#require 'pp'
     
n, q = gets.chomp!.split(" ").map(&:to_i)
$tree = {}

# O(n)
(n - 1).times do |i|
    a, b = gets.chomp!.split(" ").map(&:to_i)
    $tree[a] ||= {}
    $tree[a][b] = 0
end
 
# O(n)
scores = {}
n.times do |i|
    scores[i+1] = 0
end
    
# O(q)
operations = []
q.times do |_|
    p, x = gets.chomp!.split(" ").map(&:to_i)
    scores[p] += x
end
    
#pp scores
#pp $tree
ans = {}
tmp = [1]
while tmp.empty?.!
    d = tmp.pop
    ans[d] = scores[d]
    
    $tree[d].each do |k, _|
        scores[k] += scores[d]
        if $tree[k]
            tmp.push(k)
        else
            ans[k] = scores[k]
        end
    end
end
    
puts ans.sort.map! {|x, y| y }.join(" ")
