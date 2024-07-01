A, B = gets.split.map(&:to.i)

if A == B then
  puts 2 * A
else
  puts (2 * [A, B].max - 1)