n, k = gets.chop.split.map(&:to_i)


h = Hash.new(0)

n.times do |i|
  a, b = gets.chop.split.map(&:to_i)
  h[a] += b
end


num = 0

h.sort.each do |key, value|

  num += value

  if num >= k
    p key
    exit
  end
end
