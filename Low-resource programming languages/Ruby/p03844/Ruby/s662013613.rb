a,b,c=gets.chomp.split.map(&:to_i)
if b=="+"
  puts a.to_i+b.to_i
else
  puts a.to_i-b.to_i
end
