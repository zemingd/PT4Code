(H, N), As = readlines.map{|l| l.split.map(&:to_i)}

puts H <= As.inject(:+) ? 'Yes' : 'No'