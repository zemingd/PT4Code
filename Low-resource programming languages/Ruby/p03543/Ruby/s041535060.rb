a = gets.chop.split('')
puts a[0..2].uniq.count == 1 || a[1..3].uniq.count == 1 ? :Yes : :No