n = gets.strip.to_i
integers = gets.split(' ').map(&:to_i)

count = 0
max = 0

(1..n).each do |i|
  count = 0
  integers.each do |int|
    if int == i || int + 1 == i || int - 1 == i
      count += 1
    end
  end
  max = count if count > max
  break if count == n
end

if max == 0
  puts 1
else
  puts max
end
