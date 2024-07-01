n,m,k = gets.strip.split(' ').map(&:to_i)
table_a = gets.strip.split(' ').map(&:to_i)
table_b = gets.strip.split(' ').map(&:to_i)

queue = [[0, 0, k, 0]]
result = 0
while true
    a, b, dk, c = queue.shift
    queue.push ([a+1, b, dk - table_a[a], c + 1]) if a < table_a.length and dk >= table_a[a] and !queue.any?{|item| item[0] == a+1 and item[1] == b }
    queue.push ([a, b+1, dk - table_b[b], c + 1]) if b < table_b.length and dk >= table_b[b] and !queue.any?{|item| item[0] == a and item[1] == b+1 }
    unless queue.any?
        result = c
        break
    end
end

puts result
