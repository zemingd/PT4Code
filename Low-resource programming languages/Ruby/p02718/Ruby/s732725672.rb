n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
if a.sort.reverse[m - 1] >= a.sum / (4 * m)
    puts 'Yes'
else
    puts 'No'
end
