input = gets.strip

words = ['dream', 'dreamer', 'erase', 'eraser']

(0..words.length).each do
    words.each do |w|
        wc = w.length #wordの長さ
        if input.slice(-wc, wc) == w
            input = input.slice(0..-wc - 1)
        end
    end
end

puts input.empty? ? 'YES' : 'NO'