gets
s = gets.strip.split.map(&:to_i)

if s.count { |d| d < 0 }.odd?
  a, *b = s.map(&:abs).sort
  puts (b.inject(:+) - a)
else
  puts s.map(&:abs).inject(:+)
end
