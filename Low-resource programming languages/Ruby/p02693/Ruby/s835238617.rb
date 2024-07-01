# frozen_string_literal: true

k = gets.to_i
a, b = gets.split.map(&:to_i)

(a..b).each do |i|
  if (i % k).zero?
    puts 'OK'
    exit
  end
end
puts 'NG'
