# frozen_string_literal: true

X, K, D = gets.chomp.split.map(&:to_i)

count_moveing_to_near = X / D
nokori = K - count_moveing_to_near
near_point = X - count_moveing_to_near * D

if count_moveing_to_near >= K
  if X >= 0
    puts (X - D * K).abs
  else
    puts (X + D * K).abs
  end
  exit
end

if X % D != 0

  if nokori == 0
    puts near_point.abs
  elsif nokori.odd? && near_point > 0
    puts (near_point - D).abs
  elsif nokori.odd? && near_point < 0
    puts (near_point + D).abs
  elsif nokori.even?
    puts near_point.abs
  end
else
  if nokori == 0
    puts near_point
  elsif nokori.odd?
    puts D
  else
    puts 0
  end
end
