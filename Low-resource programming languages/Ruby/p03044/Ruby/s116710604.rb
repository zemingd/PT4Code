N = gets.to_i
us = Array.new(1)
vs = Array.new(1)
ws = Array.new(1)
h = Hash.new(1)

(N-1).times do |i|
  us[i], vs[i], ws[i] = gets.split.map(&:to_i)
  if (ws[i] % 2) === 0
    h[us[i]-1] = 0
    h[vs[i]-1] = 0
  end
end

N.times do |i|
  puts h[i]
end
