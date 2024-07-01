# frozen_string_literal: true

n = gets.to_i

arr = [0]
n.times do
  arr << gets.to_i
end

exist = Hash.new(false)
index = 1

count = 0

loop do
  if exist[index]
    count = -1
    break
  else
    exist[index] = true
  end

  count += 1
  next_i = arr[index]

  break if next_i == 2

  index = next_i
end

puts count
