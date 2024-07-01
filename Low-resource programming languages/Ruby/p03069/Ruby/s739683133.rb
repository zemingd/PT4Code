l = gets.to_i
stones = gets

if (!stones.index('.')) || (!stones.index('#'))
    puts 0
else
    left = stones.index('#.')
    right = stones.index('.#')
    if !left || (right && (right < left))
        s = stones[right+1..(l-1)]
        white = s.count('.')
        black = s.count('#')
        puts [white, black].min
    elsif !right || (left < right)
        s = stones[left+1..(l-1)]
        white = s.count('.')
        black = s.count('#')
        puts [white, black].min
    end
end

