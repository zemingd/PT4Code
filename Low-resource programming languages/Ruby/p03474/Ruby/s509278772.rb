io = STDIN
a,b=io.gets.split.map(&:to_i)
s=io.gets.chomp
if s=~/^\d{#{a}}\-\d{#{b}}$/
  puts 'Yes'
else
  puts 'No'
end
