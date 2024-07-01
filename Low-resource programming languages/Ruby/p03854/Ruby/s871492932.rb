def cnt(str,word)
    return str.scan(word).length
end

s = gets.chomp

dreamer = cnt(s,"dreamer")
dream   = cnt(s,"dream")  - dreamer
eraser  = cnt(s,"eraser")
erase   = cnt(s,"erase")  - eraser

# puts [dreamer, dream, eraser, erase]
if s.size == 7 * dreamer + 5 * dream + 6 * eraser + 5 * erase
    puts "YES"
else
    puts "NO"
end