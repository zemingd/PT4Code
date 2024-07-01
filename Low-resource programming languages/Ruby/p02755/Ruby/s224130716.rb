# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

0.upto(2000) do |x|
  if (x * 0.08).to_i == a && (x * 0.1).to_i == b
    puts x
    exit
  end
end

puts '-1'
