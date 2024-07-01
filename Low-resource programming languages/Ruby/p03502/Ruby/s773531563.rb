xstr = gets.chomp
fx = xstr.split('').map(&:to_i).inject(:+)
xint = xstr.to_i
print xint % fx == 0 ? 'Yes' : 'No'