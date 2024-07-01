n,q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
q.times do
    count = 0
    l,r = gets.chomp.split(" ").map(&:to_i)
    while l<r do
        if (s[l-1] + s[l]).eql?('AC')
            count += 1
        end
        l += 1
    end
    puts count
end