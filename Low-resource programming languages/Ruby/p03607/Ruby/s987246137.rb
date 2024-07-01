N = gets.to_i
h = {}
N.times do
  a = gets.to_i
  if h.key?(a)
    h[a] += 1
  else
    h[a] = 1
  end
end
num = 0
h.each do |_k, v|
  num += 1 if v.odd?
end
puts num
