n = gets.to_i
ar = gets.split.map(&:to_i)
approved = ar.filter(&:even?).all? do |a|
  a % 3 == 0 || a % 5 == 0
end
puts approved ? "APPROVED" : "DENIED"
