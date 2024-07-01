n, $d = gets.split.map(&:to_i)

def calc_dist(a, b)
    res = 0
    $d.times { |i| res += (b[i] - a[i]) ** 2 }
    return Math.sqrt(res)
end

pos = []
n.times { pos << gets.split.map(&:to_f) }

res = 0

pos.each_with_index do |i, idx_out|
    pos[idx_out..-1].each_with_index do |j, idx_in|
        next if idx_out == (idx_in + idx_out)
        dist = calc_dist(i, j)
        res += 1 if dist == dist.to_i
    end
end

puts res