n = gets.to_i
V = gets.chomp.split(" ")
i, j = 0, 1
hash0 = Hash.new(0)
hash1 = Hash.new(0)
(n / 2).times do
    hash0[V[i]] += 1
    hash1[V[j]] += 1
    i += 2
    j += 2
end

hash0 = hash0.sort_by{|_, v| v}.to_a
hash1 = hash1.sort_by{|_, v| v}.to_a

if V.uniq.size == 1 
    puts n / 2
elsif hash0[-1][0] == hash1[-1][0]
    if hash0[-1][1] >= hash1[-1][1]
        puts n - hash0[-1][1] - hash1[-2][1]
    else
        puts n - hash0[-2][1] - hash1[-1][1]
    end
else
    puts n - hash0[-1][1] - hash1[-1][1]
end