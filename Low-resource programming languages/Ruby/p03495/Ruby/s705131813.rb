n,k = gets.strip.split.map(&:to_i)
array = gets.strip.split.map(&:to_i).sort
answer = 0

if (num = array.uniq.count) > k
  counts = array.group_by(&:itself).map { |k, v| [k, v.count] }.sort(&:last).to_h
  (num - k).times do |i|
    answer += counts.values[i]
  end
end

puts answer

