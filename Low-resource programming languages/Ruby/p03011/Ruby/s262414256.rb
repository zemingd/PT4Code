# frozen_string_literal: true

line = gets.split.map(&:to_i).sort

puts line[0..1].inject(:+)