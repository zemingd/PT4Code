X, A, B = gets.split.take(3).map(&:to_i)

puts (if B - A > X
  :dangerous
elsif B > A
  :safe
else
  :delisious
end)
