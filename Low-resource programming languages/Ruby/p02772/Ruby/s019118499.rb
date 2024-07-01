n = gets.chomp.to_i
items = gets.chomp.split(/\s+/).map { |e| e.to_i }

puts items.all? { |item|
  item.odd? || item % 3 == 0 || item % 5 == 0
} ? "APPROVED" : "DENIED"

