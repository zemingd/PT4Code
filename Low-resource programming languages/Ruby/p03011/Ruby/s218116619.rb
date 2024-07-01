a = gets.split(' ').map(&:to_i).sort_by{|x| x}
print a[0] + a[1]