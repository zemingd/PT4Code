N = gets.to_i
Ss = Array.new(N) { gets.chomp }

w_c = {}

Ss.each do |word|
    if w_c.has_key?(word)
        w_c[word] += 1
    else
        w_c[word] = 1
    end
end

max_c = w_c.values.max
w_c = w_c.to_a.reverse.to_h
w_c.each_pair { |key, val| puts key if val == max_c }

