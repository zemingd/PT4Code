n = gets.to_i
sticks = gets.split.map(&:to_i).sort
memo = Array.new(2002, 0)
sticks.each do |stick|
  memo[stick] = 1
end
sum = 0
memo.each_with_index do |m, index|
  sum += m
  memo[index] = sum
end

ans = 0
sticks.each_with_index do |stick1, index1|
  sticks[index1 + 1..-1].each_with_index do |stick2, index2|
    max = stick1 + stick2
    min = [stick1, stick2].max - [stick1, stick2].min
    increment = memo[max - 1] - memo[min]
    increment -= 1 if stick1 < max && stick1 > min
    increment -= 1 if stick2 < max && stick2 > min
    ans += increment if increment > 0
  end
end
puts ans / 3
