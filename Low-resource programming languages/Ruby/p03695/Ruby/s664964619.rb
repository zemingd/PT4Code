n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

h = Hash.new{0}

a.each do |rate|
  if rate/400 >= 8
    h[9] += 1
  else
    h[rate/400] += 1
  end
end

if h.has_key?(9)
  max_color = h.size - 1 + h[9]
  min_color = h.size - 1
else
  max_color = h.size
  min_color = h.size
end

p min_color
p max_color
