n,k=gets.split.map(&:to_i)
h=gets.split.map(&:to_i).sort
if k<n
  puts h[0..n-1-k].inject(:+)
else
  puts 0
end
