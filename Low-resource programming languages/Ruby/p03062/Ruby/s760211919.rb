n = gets.to_i
array = gets.split.map(&:to_i)

negative_count = array.count { |e| e.negative? }

if negative_count.even?
  sum = array.inject(0) do |result, e|
    result + e.abs
  end

  puts sum
else
  sum = array.inject(0) do |result, e|
    result + e.abs
  end

  minus = array.min_by(&:abs).abs * 2
  puts sum - minus
end
