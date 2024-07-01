n, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

(k...n).each do |i|
  if a[i - k] >= a[i]
    puts 'No'
  else
    puts 'Yes'
  end
end
