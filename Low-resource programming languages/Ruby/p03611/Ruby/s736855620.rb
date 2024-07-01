n = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
semi_numbers = {}
def set_numbers(semi_numbers, n)
  if semi_numbers[n]
    semi_numbers[n] += 1
  else
    semi_numbers[n] = 1
  end
end

numbers.each do |n|
  (-1..1).each do |j|
    set_numbers(semi_numbers, n - j)
  end
end

puts semi_numbers.sort{|a, b| a[1] <=> b[1]}[-1][-1]