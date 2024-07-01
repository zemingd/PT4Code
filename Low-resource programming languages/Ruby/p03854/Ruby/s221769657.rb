s = gets.strip

words = ['dream', 'dreamer', 'erase', 'eraser']

until s.empty? do
    matched = false
    words.map do |w|
        if s[-w.size, w.size] == w
            s = s[0..-w.size - 1]
            matched = true
            break
        end
    end

    unless matched
        puts 'NO'
        exit 0
    end
end

puts 'YES'