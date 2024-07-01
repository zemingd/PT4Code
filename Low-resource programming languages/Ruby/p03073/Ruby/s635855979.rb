s = gets.chomp.split("")


def switch_tile(n)
    n == 0 ? 1 : 0
end

def diff_cnt(left_array, right_array)
    raise RuntimeError.new("size not match #{left_array}:#{right_array}") unless left_array.size == right_array.size
    res = 0
    left_array.each_with_index do |i, idx|
        res += 1 if left_array[idx] != right_array[idx]
    end
    return res
end

def generate_tiles(l, first_zero = true)
    current = 1
    current = 0 if first_zero
    res = ""
    l.times do 
        res += current.to_s
        current = switch_tile(current)
    end
    return res
end

cand_a = generate_tiles(s.size, false).split("")
cand_b = generate_tiles(s.size, true).split("")

diff_a = diff_cnt(cand_a, s)
diff_b = diff_cnt(cand_b, s)

puts [diff_a, diff_b].min