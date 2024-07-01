a, b = gets.split.map(&:to_i)
puts ( /^\d{#{a}}-\d{#{b}}$/ =~ (gets.chomp) ? 'Yes' : 'No')
