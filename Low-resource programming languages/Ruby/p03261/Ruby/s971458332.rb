n = gets.to_i
h = {}
prev = ""
ok = true
n.times{
    word = gets.chomp
    if (prev != "" && prev[-1] != word[0]) || h[word] == true
        ok = false
        break
    end
    prev = word
    h[word] = true
}
puts ok ? "Yes" : "No"
