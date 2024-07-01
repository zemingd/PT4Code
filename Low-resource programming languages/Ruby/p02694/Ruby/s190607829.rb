# frozen_string_literal: true

x = gets.to_f
m = 100.0
y = 0
loop do
  m = (m * 1.01).floor
  y += 1
  if m >= x
    puts y
    exit
  end
end
