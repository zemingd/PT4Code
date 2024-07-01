n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
bef = a[0,k].inject(:*)
(n-k).times do |i|
  s = k + i
  aft = (bef / a[s - k] ) * a[s]
  if bef < aft
    puts 'Yes'
  else
    puts 'No'
  end
  bef = aft
end