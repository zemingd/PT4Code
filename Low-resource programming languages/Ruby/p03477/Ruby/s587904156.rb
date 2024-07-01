N = gets.chomp.split(' ').map(&:to_i)

L = N[0] + N[1] 
R = N[2] + N[3]

if L > R
  print 'Left'
elsif L == R
  print 'Balanced'
else
  print 'Right'
end