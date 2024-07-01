n, q = gets.split.map(&:to_i)
parent_of = [0] * (n + 1)

define_method(:reset_parent){|pr, tg|
    parent = pr
    target = tg
    while target != 0
        next_target = parent_of[target]
        parent_of[target] = parent
        parent = target
        target = next_target
    end
}

(n - 1).times{|i|
    a, b = gets.split.map(&:to_i).sort
    if parent_of[a] == 0
        parent_of[a] = b
    elsif parent_of[b] == 0
        parent_of[b] = a
    else
        reset_parent(a, b)
    end
}

reset_parent(0, 1)

original_weight_of_index = [0] * (n + 1)
q.times{|i|
    index, val = gets.split.map(&:to_i)
    original_weight_of_index[index] += val
}

memo = {}
define_method(:weight_of_index){|index, count|
    return nil if count > 100
    if !memo.include?(index)
        parent_index = parent_of[index]
        if parent_index != 0
            parent_val = weight_of_index(parent_index, count + 1)
            return nil if parent_val == nil
            memo[index] = parent_val + original_weight_of_index[index]
        else
            memo[index] = original_weight_of_index[index]
        end
    end
    memo[index]
}

(1..n).map{|i| weight_of_index(i, 0)}
puts (1..n).map{|i| weight_of_index(i, 0)}.join(' ')
