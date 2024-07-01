a=gets.chomp.split
b=gets.chomp.split.map(&:to_i)
c=gets.chomp
if a[0]==c
  puts "#{b[0]-1} #{b[1]}"
else puts "#{b[0]} #{b[1]-1}"
end
