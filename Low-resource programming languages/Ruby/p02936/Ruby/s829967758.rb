require 'pp'

n, q = gets.chomp!.split(" ").map(&:to_i)
$tree = {}
parents = {}
(n - 1).times do |i|
    a, b = gets.chomp!.split(" ").map(&:to_i)
    $tree[a] ||= {}
    $tree[a][b] = 0
end

scores = {}
n.times do |i|
    scores[i+1] = 0
end

operations = []
q.times do |q|
    p, x = gets.chomp!.split(" ").map(&:to_i)
    operations << [p, x]
end

#pp scores

operations.each do |o, x|
    tmp = [o]
    while tmp.empty?.!
        d = tmp.pop
        #pp d
        scores[d] += x
        if $tree[d]
            $tree[d].each do |k, _|
                tmp.push(k)
            end
        end
    end
end

puts scores.values.join(" ")
