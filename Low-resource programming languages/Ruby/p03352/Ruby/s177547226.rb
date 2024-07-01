# frozen_string_literal: true

require 'prime'

x = gets.to_i

x.downto(4) do |i|
  next if i.prime?

  if i.prime_division.size == 1
    puts i
    exit
  end
end

puts 1