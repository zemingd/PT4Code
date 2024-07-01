n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

box = a[n/2 .. -1]
(n/2).downto(1) do |i|
  if box.select { |item| item % i == 0 }.inject(:+).even?
    box.unshift(a[i - 1])
  else
    box.unshift(~a[i - 1])
  end
end

b = box.map.with_index { |i, index| index + 1 if i != 0 }.compact

puts b.size
puts b
