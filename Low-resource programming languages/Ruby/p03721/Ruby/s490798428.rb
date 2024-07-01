n, k = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  h[a] += b
end

ret = 0
h.sort.each do |a, b|
  ret += b
  if ret >= k then
    puts a
    exit
  end
end