# frozen_string_literal: true

s = gets.chomp
t = gets.chomp

h = {}

0.upto(s.size - 1) do |i|
  c = s[i]
  if h[c]
    h[c].push i
  else
    h[c] = [i]
  end
end
cycle = 0
p = -1
0.upto(t.size - 1) do |i|
  c = t[i]
  if h[c].nil?
    puts '-1'
    exit
  else
    np = h[c].bsearch { |e| e > p }
    if np.nil?
      np = h[c][0]
      cycle += 1
    end
    p = np
  end
end

puts cycle * s.size + p + 1
