N = gets.to_i
a = gets.split.map(&:to_i)

d = Hash.new(0)

a.each do |aa|
  d[aa] += 1
end

h = []
d.sort_by { |k, _v| k }.reverse.each do |dd|
  if dd[1] >= 4
    h << dd[0]
    h << dd[0]
  elsif dd[1] >= 2
    h << dd[0]
  end

  if h.size >= 2
    break
  end
end

if h.size >= 2
  puts h[0] * h[1]
else
  puts 0
end