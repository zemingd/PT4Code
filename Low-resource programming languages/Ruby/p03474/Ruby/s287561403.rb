a, b = gets.split.map(&:to_i)
puts ( /^\d{#{a}}-\d{#{b}}$/.match?(gets.chomp) ? 'Yes' : 'No')
