def lscan; gets.split.map(&:to_i);end
n = lscan
a = gets.split.map(&:to_i)

if a[0] == a.max and a[-1] == a.min
  puts 'YES'
elsif a[0] == a.min and a[-1] == a.max
  puts 'YES'
else
  puts 'NO'
end