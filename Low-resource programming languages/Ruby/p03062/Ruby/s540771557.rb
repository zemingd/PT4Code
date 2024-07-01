n = gets.to_i
array = gets.split.map(&:to_i)
 
negative_count = array.count { |e| e.negative? }
 
if negative_count.odd?
  sum = array.inject do |result, e|
    result.abs + e.abs
  end
 
  minus = array.min_by(&:abs) * 2
  puts sum - minus
else
  sum = array.inject do |result, e|
    result.abs + e.abs
  end
 
  puts sum
end
