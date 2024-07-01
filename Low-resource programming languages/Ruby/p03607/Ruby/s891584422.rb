n = gets.chomp.to_i
ans = 0
hash = Hash.new(0)

n.times do |i|
    a = gets.chomp.to_i
    if hash[a] == 1
        hash[a] -= 1
    else
        hash[a] += 1
    end
end
hash.each do |i|
    if i[1] == 1
        ans += 1
    end
end
puts ans