n = gets.chomp.split(' ').map(&:to_i)[0]
n.to_s.split('').map { |s| print s == '1' ? '9' : (s == '9' ? '1' : s) }