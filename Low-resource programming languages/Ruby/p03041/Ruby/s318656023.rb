n, k = gets.chomp.split(' ').map &:to_i
a = gets.chomp.split(//)
a[k-1].downcase!
a.each {|a| print a}
