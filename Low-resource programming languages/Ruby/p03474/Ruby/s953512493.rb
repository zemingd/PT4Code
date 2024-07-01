i, j = gets.split.map &:to_i
puts /\d{#{i}}-\d{#{j}}/ =~ gets.chomp ? 'Yes' : 'No'
