a=gets.chomp.split.map(&:to_i).sort {|a, b| b <=> a }
b=(a[0]-a[1])/2

if (a[0]-a[1])% 2 == 0
  puts a[0]-b
else 
  puts 'IMPOSSIBLE'
end  