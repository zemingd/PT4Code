io = STDIN
n,m=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i).sort.reverse
if ar[0,m][-1]>=ar.inject(:+)/(4.0*m)
  puts 'Yes'
else
  puts 'No'
end
