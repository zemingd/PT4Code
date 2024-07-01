# frozen_string_literal: true

_ = gets
list = []

gets.split.map(&:to_i).map(&:pred).each_with_index do |i, index|
  list[i] = index + 1
end

puts list.join(' ')