n = gets.to_i
arr = %w[3 5 7]

arr.each do |e|
  arr << e + '3'
  arr << e + '5'
  arr << e + '7'
  break if e.size == 9
end
arr.reject! { |e| e.index('3').nil? || e.index('5').nil? || e.index('7').nil? }
arr.map!(&:to_i)
count = 0
arr.each do |i|
  count += 1
  break if n < i
end

puts count - 1