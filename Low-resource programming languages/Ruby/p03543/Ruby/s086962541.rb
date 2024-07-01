n=gets.chomp.chars
puts n[0..2].uniq.size == 1 || n[1..3].uniq.size == 1 ? "Yes" : "No"