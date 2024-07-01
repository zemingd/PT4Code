n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

i = Array.new(n, 1)

m.times do
  a, b = gets.split.map(&:to_i)
  next if i[a-1] == 0 && i[b-1] == 0

  if h[a-1] < h[b-1]
    i[a-1] = 0
  elsif h[a-1] > h[b-1]
    i[b-1] = 0
  else
    i[a-1] = i[b-1] = 0
  end
end

p i.count { |ii| ii == 1 }
