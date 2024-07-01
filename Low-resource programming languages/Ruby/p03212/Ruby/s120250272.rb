s = gets.chomp

ary = [3, 5, 7]
x = [[3, 5, 7]]
(s.size - 1).times {x << x[-1].product(ary)}
x.shift
x.map!{|e| e.map!{|e| e.join.to_i}}.flatten!.sort!

s = s.to_i
c = 0
x.each do |y|
    break if y > s
    c += 1 if y.to_s.chars.sort.join =~ /^3+5+7+$/
end

puts c