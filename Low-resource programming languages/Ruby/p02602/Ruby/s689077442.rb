n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(n-k).times do |i|
  now = a[k + i]
  pre = a[i]
  if now > pre
    puts 'Yes'
  else
    puts 'No'
  end
end
