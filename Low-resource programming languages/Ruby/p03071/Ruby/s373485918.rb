a = gets.split(/[\u00A0\s]/).map(&:to_i)
if a[0] == a[1]
  puts 2 * a[0]
else
  puts a.max * 2 - 1
end