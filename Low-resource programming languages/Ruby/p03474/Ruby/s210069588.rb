a, b = gets.strip.split.map(&:to_i)
s = gets.chomp
puts (s =~ /¥A\d{#{a}}-\d{#{b}}$/ ? 'Yes' : 'No')