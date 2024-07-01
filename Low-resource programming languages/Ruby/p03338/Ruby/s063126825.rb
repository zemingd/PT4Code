n = gets.to_i
s = gets.chomp

result = 0

max =
  if n > 52
    26
  else
    n/2+1
  end

(1..(n-1)).each do |z|
  x = s.slice(0, z)
  y = s.slice(z, n)

  if n-z < result
    break
  end

  x_h = {}
  x.each_char do |c|
    x_h[c] = true
  end

  y_h = {}
  y.each_char do |c|
    y_h[c] = true
  end

  keys = x_h.keys & y_h.keys
  cnt = keys.length
  if cnt > result
    result = cnt
  end

  if cnt >= max
    break
  end
end

puts result