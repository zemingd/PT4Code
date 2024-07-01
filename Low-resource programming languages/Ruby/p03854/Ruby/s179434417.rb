def cnt(str,word)
    return str.scan(word).length
end

s = gets.chomp

dreameraser = cnt(s,"dreameraser")
dreamerase  = cnt(s,"dreamerase" ) - dreameraser
dreamer = cnt(s,"dreamer") - ( dreameraser + dreamerase)
dream   = cnt(s,"dream")  -  ( dreameraser + dreamerase + dreamer)
eraser  = cnt(s,"eraser") - dreameraser
erase   = cnt(s,"erase")  - (dreameraser + dreamerase + eraser )

# puts [dreamer, dream, eraser, erase]
if s.size == 11 * dreameraser + 10 * dreamerase + 7 * dreamer + 5 * dream + 6 * eraser + 5 * erase
    puts "YES"
else
    puts "NO"
end
