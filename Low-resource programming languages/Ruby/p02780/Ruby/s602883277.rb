# frozen_string_literal: true

n, k = gets.strip.split.map(&:to_i)
ps   = gets.strip.split.map(&:to_i)

sums = (0..(n - k)).map do |i|
  ps[i..(i + (k - 1))].inject(&:+)
end

index = sums.index(sums.max)
ps    = ps[index..(index + k - 1)]

ps.map! do |p|
  p * (p + 1) / 2 / p.to_f
end

puts ps.inject(&:+)
