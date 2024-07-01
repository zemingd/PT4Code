n = gets.to_i

p_a = gets.chomp.split
p_s = String.new
n.times do |i|
    p_s += p_a[i]
end

q_a = gets.chomp.split
q_s = String.new
n.times do |i|
    q_s += q_a[i]
end

from_1_to_n = []
(1..n).each do |num|
    from_1_to_n << num
end
n_permu = from_1_to_n.permutation(n).to_a
n_permu.length.times do |i|
    n_permu[i] = n_permu[i].join
end
n_permu.sort!

a = n_permu.index(p_s)
b = n_permu.index(q_s)

puts (a - b).abs