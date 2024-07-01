h,n = gets.chomp.split(' ').map(&:to_i)
att = gets.chomp.split(' ').map(&:to_i).sum
puts att >= h ? 'Yes' : 'No'