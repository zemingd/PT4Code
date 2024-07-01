n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
prev = a[0,k].inject(&:*)
(k...n).each do |i|
  cur = prev * a[i] / a[i-k]
  if cur > prev
    puts 'Yes'
  else
    puts 'No'
  end
  prev = cur
end
