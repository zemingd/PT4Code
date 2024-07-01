dishes = 5.times.map { gets.chomp.to_i }

sorted = dishes.sort_by { |n| n % 10 == 0 ? n : n % 10 }.reverse
puts sorted.pop + sorted.inject(0) { |s, dish| s + (dish.to_f / 10).ceil * 10 }
