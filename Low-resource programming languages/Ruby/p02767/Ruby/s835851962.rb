n = gets.to_i
arr = gets.split(' ').map!(&:to_i).sort!

min = arr.first
max = arr.last

point = (min + max) / 2

ans = Float::INFINITY
(min..max).each do |point|
  total = 0
  arr.each do |x|
    total += (x - point) ** 2
  end
  if total < ans
    ans = total
  end
end

puts ans
