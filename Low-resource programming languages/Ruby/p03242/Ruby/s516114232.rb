n = gets.chomp.chars

puts n.each.map(|n| n=='1' ? '9':'1').join