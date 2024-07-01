N = gets.to_i
ary = gets.split.map(&:to_i)
tmp = ary.uniq
if ary.length != tmp.length
  puts "NO"
else
  puts "YES"
end