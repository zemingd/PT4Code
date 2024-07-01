a = STDIN.gets.split.map { |i| i.to_i }
w = a[0]
h = a[1]
x = a[2]
y = a[3]
r = a[4]
puts (x-r) < 0 || (y-r) < 0 || w < (x+r) || h < (y+r) ? 'No' : 'Yes'