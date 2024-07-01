# frozen_string_literal: true

variation_limit = gets.chomp.split(' ')[1].to_i
numbers = gets.chomp.split(' ').map(&:to_i)

variations = numbers.uniq

variation_and_its_count = variations.map do |variation|
  numbers.count(variation)
end

if variation_limit >= variations.count
  puts '0'
  return
end

variation_and_its_count.sort!

required_action_count = variation_and_its_count[0..(variations.uniq.count - variation_limit - 1)].reduce(:+)

puts required_action_count
