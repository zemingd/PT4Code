require "stringio"

gets
xs = gets.strip.split(" ").map(&:to_i)

sorted = xs.sort
a = sorted[xs.size / 2 - 1]
b = sorted[xs.size / 2]

s = StringIO.new
xs.each do |x|
  if x <= a
    s.puts b
  elsif x >= b
    s.puts a
  end
end

s.rewind
puts s.read(s.size - 1)
