a,b,c = gets.chomp.split(' ').map(&:to_i)
if a**(1/2.0) + b**(1/2.0) < c**(1/2.0)
  puts 'Yes'
else
  puts 'No'
end
