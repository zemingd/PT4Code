nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

combi = k
(n - 1).times do
    combi *= k - 1
end

puts combi
