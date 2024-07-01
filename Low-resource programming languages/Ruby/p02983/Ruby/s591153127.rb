l, r = gets.split.map &:to_i
l %= 2019
r %= 2019
res = 2019


l.upto(r) do |i| 
    r.downto(l) do|j|
        break if i >= j
        break if res == 0
        res = [res, (i * j) % 2019].min
    end
end

puts res