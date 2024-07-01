n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

s = a[0...k].inject(:*)

(n - k).times do |i|
  t = s * a[k + i] / a[i]
  if s < t
    puts 'Yes'
  else
    puts 'No'
  end
  s = t
end