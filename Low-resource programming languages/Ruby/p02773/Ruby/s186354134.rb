
N = gets.to_i
Ss = Array.new(N) { gets.chomp }

def safe_invert(orig_hash)
    orig_hash.each_key.group_by do |key|
        orig_hash[key]
    end
end

w_c = {}

Ss.each do |word|
    if w_c.has_key?(word)
        w_c[word] += 1
    else
        w_c[word] = 1
    end
end

max_c = w_c.values.max
w_c = safe_invert(w_c)
w_c[max_c].reverse.map { |w| puts w}