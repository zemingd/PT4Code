while gets!="0 0\n"
puts $_.split.map(&:to_i).sort.join(' ')end