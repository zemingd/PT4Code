a, b = gets.split.map(&:to_i); c = gets.chomp
puts c =~ /[0-9]{#{a}}-[0-9]{#{b}}/ ? 'Yes' : 'No'