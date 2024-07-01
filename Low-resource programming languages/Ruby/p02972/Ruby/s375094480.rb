n = gets.to_i
array = gets.split(" ").map(&:to_i)
result = []

(array.length).downto(1) do |i|
  multiple_count = array.length / i

  sum = 0
  if multiple_count > 1
    (2..multiple_count).each do |j|
      sum += array[i * j - 1]
    end
  end

  unless array[i - 1] == sum % 2
    result << i
  end
end

puts result.length

result.each do |re|
  print re
  print " "
end