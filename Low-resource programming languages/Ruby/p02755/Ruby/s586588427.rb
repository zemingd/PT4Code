def price_list(number, tax)
  (1..100).map do |i|
    i if (tax * i).floor == number
  end.compact
end

a, b = gets.split(' ').map(&:to_i)

a_result = price_list(a, 0.08)
b_result = price_list(b, 0.10)

result = a_result & b_result

if result.empty? then
  puts -1
else
  puts result.min
end