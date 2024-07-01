n, q = gets.chomp.split(' ').map(&:to_i)

tree = [{val: 0, children: []}]

(n - 1).times do
    a, b = gets.chomp.split(' ').map(&:to_i)
    a -= 1
    b -= 1
    tree[a] = {val: 0, children: []} unless tree[a]
    tree[a][:children].push(b)
end

def sum(tree, i, n)
    tree[i] = {val: 0, children:[]} unless tree[i] 
    tree[i][:val] += n
    tree[i][:children].each do |child|
        sum(tree, child, n)
    end
end

q.times do |i|
    root, n = gets.chomp.split(' ').map(&:to_i)
    root -= 1
    sum(tree, root, n)
end

puts tree.map{|a| a[:val]}.join(' ')