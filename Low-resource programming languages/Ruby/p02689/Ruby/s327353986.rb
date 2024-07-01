N, M = gets.chomp.split(" ").map(&:to_i)
H = gets.chomp.split(" ").map(&:to_i)

nb = {}
M.times do |i|
  a, b = gets.chomp.split(" ").map(&:to_i)
  a -= 1
  b -= 1
  nb[a] ||= []
  nb[b] ||= []
  nb[a] << b
  nb[b] << a
end

ans = 0
0.upto(N-1) do |i|
  if nb[i].nil?
    ans += 1
  else
    hs = (nb[i] || []).map {|v| H[v]}.sort.reverse
    if H[i] > hs.max
      ans += 1
    end
  end
end
puts ans
