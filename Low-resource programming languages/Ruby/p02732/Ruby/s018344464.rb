# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

h = Hash.new { 0 }

a.each do |e|
  h[e] += 1
end

def nc2(n)
  case n
  when 0
    0
  when 1
    0
  when 2
    1
  else
    n * (n - 1) / 2
  end
end

sum = 0
h.each do |k, v|
  sum += nc2(v)
end

a.each do |e|
  puts sum - nc2(h[e]) + nc2(h[e] - 1)
end
