a = gets.split.map(&:to_i)
puts a[0].odd? && a[1].odd? ? "Yes" : "No"