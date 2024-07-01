n = gets.chomp.to_i
ns = gets.chomp.split(' ').map(&:to_i)

ngs = ns.reject { |x| x.odd? }
        .reject { |x| x % 5 == 0 || x % 3 == 0 }
        .count

puts (ngs == 0) ? 'APPROVED' : 'DENIED'
