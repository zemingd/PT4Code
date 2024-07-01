n = gets.to_i
ps = gets.split(" ").map(&:to_i)
q = gets.split(" ").map(&:to_i)

permu = []
(1..n).each do |i|
    permu.push(i)
    i += 1
end

flag_p = 0
flag_q = 0
count = 0

permu.permutation(n) do |a|
    current_permu = a
    if current_permu == ps
        flag_p = count
    end
    if current_permu == q
        flag_q = count
    end
    count = count + 1
end

puts (flag_p - flag_q).abs