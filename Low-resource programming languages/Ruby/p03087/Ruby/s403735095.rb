q = gets.split(" ").map(&:to_i)[1]
s = gets.chomp

q.times do
  a, b = gets.chomp.split(" ").map(&:to_i)

  puts s[a-1..b-1].scan('AC').length
end