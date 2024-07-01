n, k = gets.chomp.split(" ").map(&:to_i)
count = 0
arr = []
hash = Hash.new(0)
n.times do |i|
    a, b = gets.chomp.split(" ").map(&:to_i)
    hash[a] += b
end
hash.each do |i,j|
    count += j
    if count >= k
        puts i
        break
    end
    
end
