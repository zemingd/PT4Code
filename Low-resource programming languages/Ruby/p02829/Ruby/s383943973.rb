A, B = readlines.map(&:strip)

puts %w(1 2 3).select{|x| x != A && x != B}