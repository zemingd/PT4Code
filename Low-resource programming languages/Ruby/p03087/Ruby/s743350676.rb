n, q = gets.split.map(&:to_i)
s = gets.chomp
q.times do
  l, r = gets.split.map(&:to_i)
  puts s[l-1..r-1].scan("AC").to_a.length
end