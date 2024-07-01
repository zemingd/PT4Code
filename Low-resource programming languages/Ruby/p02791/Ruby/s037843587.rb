n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0

(1..numbers.length - 1).each do |i|
  unless numbers[i] > numbers[i - 1]
    if numbers[0..i].all? {|e| e >= numbers[i]}
      count += 1
    end
  end
end

puts count + 1
