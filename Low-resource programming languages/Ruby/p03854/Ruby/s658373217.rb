S = gets.chomp.reverse
puts S.scan(/(maerd|remaerd|esare|resare)/).join.size == S.size ? 'YES' : 'NO'