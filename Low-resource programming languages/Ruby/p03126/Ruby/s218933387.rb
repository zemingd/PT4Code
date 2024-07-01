n, m = gets.chomp.split.map(&:to_i)

h = Hash.new(0)

n.times do |i|
  ka = gets.chomp.split.map(&:to_i)
    ka.each_with_index do |val, idx|
    next if idx.zero?

    h[val] += 1
  end
end

ans = 0
h.each do |i|
  ans += 1if i[1] == n
end

p ans
