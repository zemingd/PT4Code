_, m = STDIN.gets.split(' ').map(&:to_i)

a = STDIN.gets.split(' ').map(&:to_i)

a.sort! { |i, j| j <=> i }

total = a.inject(:+).to_f

print (a[m-1] >= total / (4 * m)) ? 'Yes' : 'No'
