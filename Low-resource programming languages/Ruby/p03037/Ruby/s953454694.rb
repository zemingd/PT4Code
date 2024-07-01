n, m = gets.strip.split(" ").map(&:to_i)

b = 1
e = n

m.times do
  l, r = gets.strip.split(" ").map(&:to_i)

  if l <= b && r >= e
    next
  elsif (l >= b && l <= e) || (r >= b && r <= e)
    b = [b, l].max
    e = [e, r].min
  else
    b = -1
    break
  end
end

puts b == -1 ? 0 : (e - b + 1)
