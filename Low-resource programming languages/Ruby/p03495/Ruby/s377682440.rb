# frozen_string_literal: true

variation_limit = gets.chomp.split(' ')[1].to_i
numbers = gets.chomp.split(' ').map(&:to_i)

variations = numbers.uniq

if variations.count < variation_limit
  puts 0
  return
end

instance_counts_without_variations = variations.map { |variation| numbers.count - (numbers - [variation]).count }

instance_counts_without_variations.sort!

puts instance_counts_without_variations[0..(variations.count - variation_limit - 1)].reduce(:+)