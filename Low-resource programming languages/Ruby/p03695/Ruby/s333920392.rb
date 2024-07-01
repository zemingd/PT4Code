n = gets.chomp.to_i
a = gets.split.map(&:to_i)
def color(rate)
  if rate < 3200
    rate / 400
  else
    8
  end
end
h = Hash.new(0)
a.each do |r|
  h[color(r)] += 1
end
rr = 0
if h[8]
  rr = h[8]
  h.delete(8)
end
min = [h.size, 1].max
max = h.size + rr
puts "#{min} #{max}"
