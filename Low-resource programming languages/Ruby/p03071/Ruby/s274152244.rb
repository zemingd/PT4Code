a,b = gets.strip.split.map(&:to_i)
max = 0
2.times do
  if a>=b then
    max += a
    a -= 1
  else
    max += b
    b -= 1
  end
end

puts max