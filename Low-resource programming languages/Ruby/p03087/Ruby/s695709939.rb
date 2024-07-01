n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp.split("")
ac = Array.new(n, 0)
ac[0] = cnt = 0
for i in 1..(n-1)
  if s[(i-1)..i].join == "AC"
    cnt += 1
    ac[i] = cnt
  else
    ac[i] = cnt
  end
end
for i in 1..q
  l, r = gets.chomp.split.map(&:to_i)
  puts ac[r-1] - ac[l-1]
end