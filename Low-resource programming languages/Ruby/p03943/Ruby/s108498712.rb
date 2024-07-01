d = gets.split.map(&:to_i).sort
m = d.pop
if (m - d.inject(&:+)).zero?
  puts 'Yes'
else
  puts 'No'
end