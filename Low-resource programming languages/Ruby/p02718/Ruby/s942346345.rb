n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!.reverse!
print (a[m-1]*1.0 / a.inject(:+)) >= (1.0 / (4*m)) ? 'Yes' : 'No'