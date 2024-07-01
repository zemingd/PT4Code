n,k = gets.split.map(&:to_i)
h = Hash.new(0)
n.times do
  a,b = gets.split.map(&:to_i)
  h[a] += b
end

h.sort.each do |n, v|
  if k <= v
    puts n
    exit 0
  else
    k -= v
  end
end