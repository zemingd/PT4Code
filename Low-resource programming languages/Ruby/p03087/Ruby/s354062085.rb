n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp
ac = Array.new(n + 1, 0)
1.step(n) do |i|
  ac[i] += ac[i - 1]
  next if s[i - 1] != "C"
  if i > 1 && s[i - 2] == "A"
    ac[i] += 1
  end
end

q.times do |_|
  l, r = gets.chomp.split.map(&:to_i)
  puts ac[r] - ac[l]
end