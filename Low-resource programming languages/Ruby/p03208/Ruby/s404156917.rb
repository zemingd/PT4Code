n, k = gets.chomp.split(' ').map(&:to_i)
h = readlines.map(&:chomp).map(&:to_i).sort

min = 1000000000
h.each_with_index do |hh, i|
  if i == n - k + 1 
    break
  else
    min = (min > (h[i + k - 1] - h[i])) ? h[i + k - 1] - h[i] : min
  end
end

p min
