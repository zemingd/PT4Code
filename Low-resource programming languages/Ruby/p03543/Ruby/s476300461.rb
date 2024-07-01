n = gets.chomp.chars
puts n[0..2].uniq.count == 1 || n[1..3].uniq.count == 1 ? 'Yes' : 'No'