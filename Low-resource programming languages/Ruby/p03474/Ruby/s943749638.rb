a, b = gets.split(' ').map(&:to_i)
puts gets.chomp.match(/^\d{#{a}}\-\d{#{b}}$/) ? 'Yes' : 'No'