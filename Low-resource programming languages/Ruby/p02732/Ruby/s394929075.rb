# frozen_string_literal: true

N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

class Integer
  def factorial
    return 1 if zero?

    (1..self).reduce(:*)
  end
end

def count_of_combination_with(object_number, sample_number: 2)
  object_number.factorial / (sample_number.factorial * (object_number - sample_number).factorial)
end

answer = (0..(N - 1)).map do |i|
  duplicated_A = A.dup.tap { |da| da.delete_at(i) }

  selectable_item = duplicated_A.select { |da_item| duplicated_A.count(da_item) > 1 }.uniq
  combination_counts = selectable_item.map { |si| count_of_combination_with(duplicated_A.count(si)) }
  puts combination_counts.reduce(:+)
end
