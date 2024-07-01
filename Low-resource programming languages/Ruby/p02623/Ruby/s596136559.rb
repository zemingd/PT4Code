n,m,k = gets.strip.split(' ').map(&:to_i)
table_a = gets.strip.split(' ').map(&:to_i)
table_b = gets.strip.split(' ').map(&:to_i)

queue = [[0, 0, k, 0]]
result = 0
while true
    a, b, dk, c = queue.shift
    if a < table_a.length and dk >= table_a[a]
        new_item = [a+1, b, dk - table_a[a], c + 1]
        index = queue.rindex{|item| item[-2] <= new_item[-2]}
        if !index.nil?
            queue.insert(index, new_item) if index == 0 or queue[index-1][0,2] != new_item[0,2]
        else
            queue.push(new_item) if !queue.any? or queue[-1][0,2] != new_item[0,2]
        end
    end
    
    if b < table_b.length and dk >= table_b[b]
        new_item = [a, b+1, dk - table_b[b], c + 1]
        index = queue.rindex{|item| item[-2] <= new_item[-2]}
        if !index.nil?
            queue.insert(index, new_item) if index == 0 or queue[index-1][0,2] != new_item[0,2]
        else
            queue.push(new_item) if !queue.any? or queue[-1][0,2] != new_item[0,2]
        end
    end

    unless queue.any?
        result = c
        break
    end
end

puts result