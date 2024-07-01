#!/usr/bin/env ruby

(n, m) = gets.chomp.split(/ /).map(&:to_i)
cards = []

cards = gets.chomp.split(/ /).map(&:to_i)
cards.sort!
m.times do
  (b, c) = gets.chomp.split(/ /).map(&:to_i)
  (0..(b-1)).each do |i|
    if cards[i] < c
      cards[i] = c
    end
  end
  cards.sort!
end

sum = 0
cards.each do |j|
  sum += j
end
puts sum

