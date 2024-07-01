n = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i).join("")
Q = gets.chomp.split.map(&:to_i).join("")
a = 0
b = 0

[*1..n].permutation.each_with_index do |perm, idx|
    a = idx if P == perm.join("")
    b = idx if Q == perm.join("")
end

puts (a-b).abs