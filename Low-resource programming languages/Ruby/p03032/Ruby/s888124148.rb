n, k = gets.chomp.split(' ').map(&:to_i)
values = gets.chomp.split(' ').map(&:to_i)

@k = k
def ptns(queue, stones, trial)
    n_ptns = [{ q: queue, s: stones, t: trial }]

    if trial == @k
        return [{ q: queue, s: stones, t: trial }];
    end

    unless queue.empty?
        # a
        n_queue = queue.dup
        n_stones = stones + [n_queue.delete_at(0)]
        n_ptns = n_ptns + ptns(n_queue, n_stones, trial + 1)

        # b
        n_queue = queue.dup
        n_stones = stones + [n_queue.delete_at(-1)]
        n_ptns = n_ptns + ptns(n_queue, n_stones, trial + 1)
    end

    unless stones.empty?
        # c
        n_stones = stones.sort
        n_queue = [n_stones.delete_at(0)] + queue
        n_ptns = n_ptns + ptns(n_queue, n_stones, trial + 1)

        # d
        n_stones = stones.sort
        n_queue = queue + [n_stones.delete_at(0)]
        n_ptns = n_ptns + ptns(n_queue, n_stones, trial + 1)
    end

    return n_ptns
end

results = ptns(values, [], 0)
puts results.map { |r| r[:s].reduce(:+) || 0 }.max
