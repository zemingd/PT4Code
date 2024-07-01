ary = gets.split.map(&:to_i)
a = ary[0]
b = ary[1]
c = ary[2]
counter = 0

(a..b).each do |item|
  counter += 1 if c % item == 0
end

puts counter