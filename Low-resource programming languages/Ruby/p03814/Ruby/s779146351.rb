word = gets.chomp.split("")
wordr = word.reverse
num = word.length-1
first = 0
last = 0

(0..num).each do |i|
    if word[i] == "A"
        first = word.index(word[i])
        break
    end
end
(0..num).each do |i|
    if wordr[i] == "Z"
        last = word.index(word[i])
    break
    end
end

if last > 0
    last = word.length - last
    puts last - first
else
    puts (word.length) - first
end

