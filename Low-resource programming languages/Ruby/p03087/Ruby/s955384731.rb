n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp.split("")
a = []
cnt_a = 0
(n-1).times do |i|
  if s[i] == "A" && s[i+1] == "C"
    cnt_a += 1
  end
  a[i] = cnt_a
end
q.times do
  l, r = gets.chomp.split.map(&:to_i)
  if l == 1
    puts a[r-2]
  else
    puts a[r-2] - a[l-2]
  end
end