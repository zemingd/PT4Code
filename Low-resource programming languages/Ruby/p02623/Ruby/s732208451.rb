num = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

time = num[2]
sum_time = 0
book_count = 0
while sum_time < time
    
    if !a.empty? and !b.empty?
        if a[0] > b[0]
            sum_time += b.shift
            book_count += 1
        elsif a[0] < b[0] or b.empty?
            sum_time += a.shift
            book_count += 1
        elsif a[0] == b[0]
            sum_time += a.shift
            book_count += 1
        end
    elsif a.empty?
        sum_time += b.shift
        book_count += 1
    elsif b.empty?
        sum_time += a.shift
        book_count += 1
    elsif a.empty? and b.empty?
        break
    end

    if sum_time > time
        book_count -= 1
        break
    end
end

puts book_count