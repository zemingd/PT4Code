# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

a.select! { |e| e.even? }
if a.all? { |e| e % 3 == 0 || e % 5 == 0}
  puts 'APPROVED'
else
  puts 'DENIED'
end
