a, b = gets.strip.split.map(&:to_i)

c = 0

(a..b).each do |i|
    c += i.digits[0] == i.digits[-1] && i.digits[1] == i.digits[-2] ? 1 : 0
end

puts c