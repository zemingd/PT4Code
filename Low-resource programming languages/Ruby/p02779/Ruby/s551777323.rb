as = gets.split(' ').map(&:to_i)
puts as.uniq.count < as.count ? 'NO' : 'yes'