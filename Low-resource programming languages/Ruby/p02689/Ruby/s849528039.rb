n, k = gets.strip.split.map(&:to_i)
hs = gets.strip.split.map(&:to_i)
is_yoi = Array.new(n) { true }

k.times do
  a, b = gets.strip.split.map(&:to_i)
  if hs[a - 1] >= hs[b - 1] then
    is_yoi[b - 1] = false
  end
  if hs[a - 1] <= hs[b - 1] then
    is_yoi[a - 1] = false
  end
end

is_yoi.select! { |b| b }

puts is_yoi.size()
