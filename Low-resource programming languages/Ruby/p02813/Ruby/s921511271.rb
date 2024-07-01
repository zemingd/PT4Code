require 'pp'

n = gets.to_i
p_n = gets.split.map(&:to_i)
q_n = gets.split.map(&:to_i)

i = 0
p_index = -1
q_index = -1
(1..n).to_a.permutation(n).sort.each do |x|
    if p_index == -1 && x == p_n
        p_index = i
    end

    if q_index == -1 && x == q_n
        q_index = i
    end

    i += 1
end

puts (p_index - q_index).abs

