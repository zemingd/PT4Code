n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new(0)
a.each do |i|
    hash[i] += 1
end
hash_2 = Hash.new(0)
arr = Array.new(n+1,0)
count = 0
hash.each do |i|
    ans =  (i[1] * (i[1] - 1)) / 2
    hash_2[i[0]] = ans
    count += ans
end
a.each do |j|
    point = hash_2[j]
    sa_1 = (hash[j] * (hash[j] - 1)) / 2
    sa_2 = [((hash[j]-1) * (hash[j] - 2)) / 2,0].max
    count = count - sa_1 + sa_2
    puts count
    count = count + (sa_1 - sa_2)
end