l, r = gets.split.map &:to_i
l %= 2019 * 2
r %= 2019 * 2
if l > r
  puts 0
  exit 0
end
 
res = 2019
 
 
l.upto(r) do |i| 
    r.downto(l) do|j|
        break if i >= j
        break if res == 0
        res = [res, (i * j) % 2019].min
    end
end
 
puts res