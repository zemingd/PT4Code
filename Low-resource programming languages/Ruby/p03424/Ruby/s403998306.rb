n = gets   # dummy                                                              
ary = gets.split(' ').map(&:to_s)

m = ary.sort.uniq.size
if m == 3 then
  puts "Three"
else
  puts "Four"
end