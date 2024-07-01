# frozen_string_literal: true

require 'prime'

x = gets.to_i

loop do
  if x.prime?
    puts x
    exit
  end
  x += 1
end
