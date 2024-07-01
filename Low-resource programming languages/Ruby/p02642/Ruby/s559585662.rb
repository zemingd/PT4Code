# frozen_string_literal: true

N = gets.chomp.to_i
ar = gets.chomp.split.map(&:to_i)
ar.sort!
# p ar

counter = 0
hash = {}

ar.each_with_index do |i, index|
  unless hash[i].nil?
    counter += 1
    next
  end
  ar.each_with_index do |j, index2|
    # p [i, j]
    next if i == j
    if (i / 2) < j
      counter += 1
      hash[i] = true
      break
    end

    break if i % j == 0
    counter += 1 if index2 == N - 2
  end
  # p counter
end

puts counter
