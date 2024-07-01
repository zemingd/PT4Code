n, k = gets.chomp.split(' ').map(&:to_i)
h = readlines.map(&:chomp).map(&:to_i).sort

min = 1000000000
h.each_with_index do |hh, i|
  if i == 0 || i == n - 1
    next
  else
    min = (min > (h[i + 1] - h[i - 1])) ? h[i + 1] - h[i - 1] : min
  end
end

p min

