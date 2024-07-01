n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
(n-k).times do |i|
  s = k + i
  bef = a[s - k]
  aft = a[s]
  if bef < aft
    puts 'Yes'
  else
    puts 'No'
  end
end