gets
stones = gets

if (!stones.index('.')) || (!stones.index('#'))
    puts 0
else
    left = stones.index('#.')
    right = stones.index('.#')
    if !left || (right && (right < left))
        puts stones[right+1..-1].count('.')
    elsif !right || (left < right)
        puts stones.count('.')
    end
end