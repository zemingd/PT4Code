n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i

q.times do
    b,c = gets.chomp.split.map(&:to_i)

    count = a.count(b)
    a.delete_if{|n| n == b}
    count.times do
        a.push(c)
    end
    puts a.sum
end