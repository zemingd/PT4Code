a=gets.chomp
b=gets.chomp.split.map(&:to_i)
if b.count-b.uniq.count==0
  puts "YES"
else puts "NO"
end