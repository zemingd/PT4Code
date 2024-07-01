a, b = gets.strip.split.map(&:to_i)
s = gets.chomp
puts (s =~ /\d{#{a}}-\d{#{b}}/ ? 'Yes' : 'No')