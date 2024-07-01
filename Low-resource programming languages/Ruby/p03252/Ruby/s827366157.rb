s, t = gets.chomp, gets.chomp

s.size.times{|i|
    from, to = s[i], t[i]
    fts, tfs = s.chars.select.with_index{|c, i| i if c == from }, s.chars.select.with_index{|c, i| i if c == to }
    fts.each{|i| s[i] = to }
    tfs.each{|i| s[i] = from }
}
puts s == t ? 'Yes' : 'No'