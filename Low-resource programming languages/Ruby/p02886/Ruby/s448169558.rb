puts "たこ焼きの個数を入力してください"
N = gets.to_i
puts "#{N}個分の味を入力してください"
taste = gets.split.map(&:to_i)

array = taste.combination(2).to_a

sum = []
array.each do |arr|
  sum << arr.inject(&:*)
end

puts sum.inject(&:+)