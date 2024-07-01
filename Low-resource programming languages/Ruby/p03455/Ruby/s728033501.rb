sum = gets.split.map(&:to_i).inject(:*)
puts sum.odd? ? 'Odd' : 'Even'