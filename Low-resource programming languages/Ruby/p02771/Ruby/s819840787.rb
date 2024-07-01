Ns = gets.chomp.split(' ').map(&:to_i)
puts Ns.uniq.count == 2 ? 'YES' : 'NO'