n, q = gets.split.map(&:to_i)
nodes = (0..n).map{|index|
    {:parent => 0, :index => index, :count => 0}
}
define_method(:reset_parent){|parent, target|
    return if target == 0
    reset_parent(target, nodes[target][:parent])
    nodes[target][:parent] = parent
}

(n - 1).times{|i|
    a, b = gets.split.map(&:to_i).sort
    if nodes[a][:parent] == 0
        nodes[a][:parent] = b
    else
        nodes[b][:parent] = a
    end
}

reset_parent(0, 1)

original_weight_of_index = [0] * (n + 1)
q.times{|i|
    index, val = gets.split.map(&:to_i)
    original_weight_of_index[index] += val
}

memo = {}
define_method(:weight_of_index){|index|
    if !memo.include?(index)
        memo[index] =original_weight_of_index[index]
        parent_index = nodes[index][:parent]
        if parent_index != 0
            memo[index] += weight_of_index(parent_index)
        end
    end
    memo[index]
}

puts (1..n).map{|i| weight_of_index(i)}.join(' ')
