n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new(0)
a.each do |i|
    hash[i] += 1
end
n.times do |j|
    hash[a[j]] -= 1
    count = 0
    hash.each do |i|
        ans =  (i[1] * (i[1] - 1)) / 2
        count += ans
    end
    puts count
    hash[a[j]] += 1
end