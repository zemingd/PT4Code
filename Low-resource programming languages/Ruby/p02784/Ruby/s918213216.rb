h, n= gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split(' ').map(&:to_i).sort
puts strs.inject(:+) >= h ? 'Yes' : 'No'