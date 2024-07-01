word = gets.chomp.split("")

first = 0
last = 0
(0..word.length-1).each do |i|
    if word[i] == "A"
        first = word.index(word[i])
        break
    end
end
(1..word.length-1).reverse_each do |i|
    if word[i] == "Z"
        last = word.index(word[i])
        break
    end
end

last = word.length - last

puts last - first