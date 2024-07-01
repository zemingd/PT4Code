# frozen_string_literal: true

loop do
  h, w = gets.chomp.split.map(&:to_i)
  break if (h + w).zero?
  line = '#' * w
  h.times do
    puts line
  end
  puts
end

