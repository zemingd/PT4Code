wordslist = []
num = gets.to_i

for i in 1..num do
    word = gets.chomp
    if wordslist.include?(word)
        p "No"
        exit!
    end
    wordslist.push(word)
end

for i in 0...wordslist.length-1 do
    if wordslist[i][words[i].length-2] != wordslist[i+1][0]
        p "No"
        exit!
    end
end

p "Yes"