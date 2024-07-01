n = gets.to_i
arr = %w[3 5 7]

arr.each do |e|
  arr << e + '3'
  arr << e + '5'
  arr << e + '7'
  break if e.size == 10
end

arr.reject! { |e| e.index('3').nil? || e.index('5').nil? || e.index('7').nil? }
arr.map!(&:to_i)

puts arr.bsearch_index { |e| n < e }