puts 5.times.map { gets.chomp.to_i }
    .sort_by { |v| - (v + 9) % 10 }
    .inject { |s, n| s + n + (10 - (s % 10)) % 10 }