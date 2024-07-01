a = gets.chomp.split(' ').map(&:to_i).sort!

if a[0] + a[1] == a[2]
  p 'Yes'
else
  p 'No'
end