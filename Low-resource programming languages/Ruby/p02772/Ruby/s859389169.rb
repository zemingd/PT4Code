# frozen_string_literal: true

gets

evens = gets.strip.split.map(&:to_i).select(&:even?)
puts evens.size == evens.select { |n| (n % 3).zero? || (n % 5).zero? }.size ? 'APPROVED' : 'DENIED'
