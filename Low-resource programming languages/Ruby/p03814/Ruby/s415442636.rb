s=gets.chomp
arr = s.scan(/A[A-Z]*Z/).map { |w| w.size }
puts arr.max