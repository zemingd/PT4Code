N, K, Q = gets.split.map(&:to_i)
a = []
Q.times {
  a << gets.to_i
}

N.times do |i|
  score = Q - a.count(i + 1)
  if score < K
    puts "Yes"
  else
    puts "No"
  end
end