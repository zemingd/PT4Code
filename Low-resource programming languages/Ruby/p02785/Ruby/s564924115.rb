n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

h.sort!.reverse!
ans = 0
h.each do |hh|
  if k > 0
    k -= 1
  else
    ans += hh
  end
end
p ans
