n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp
l = []
r = []
q.times do |i|
  l[i], r[i] = gets.chomp.split.map(&:to_i)
end

memo = []
(n-1).times do |i|
  if s[i..i+1] == 'AC'
    memo[i] = true
  else
    memo[i] = false
  end
end

q.times do |i|
  le = l[i] - 1
  ri = r[i] - 2
  p memo[le..ri].count(true)
end
