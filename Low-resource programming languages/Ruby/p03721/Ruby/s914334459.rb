n, k = gets.split.map(&:to_i)
h = Hash.new { 0 }

n.times do
  a, b = gets.split.map(&:to_i)
  h[a] += b
end

h.sort.each do |key, v|
  k -= v
  if k <= 0
    puts key
    exit
  end
end
