n = gets.strip.to_i
integers = gets.split(' ').map(&:to_i)

result = {}

(1..n).each do |i|
  count = 0
  integers.each do |int|
    if int == i || int + 1 == i || int - 1 == i
      count += 1
    end
  end
  result.store(i,count)
  break if count == n
end

max = result.max_by {|k,v| v }.last
if max == 0
  puts 1
else
  puts max
end
