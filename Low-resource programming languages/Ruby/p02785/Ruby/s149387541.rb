_, k = gets.split.map(&:to_i)
h = gets.chop.split.map(&:to_i)

if h.length < k
  puts 0
else
  k.times do
    h.delete(h.max)
  end
  puts h.sum
end