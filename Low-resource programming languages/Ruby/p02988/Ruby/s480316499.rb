N = gets.to_i
P = gets.chomp.split(" ").map(&:to_i)

ans = 0
(1..N-2).each{|i|
  if P[i-1] < P[i] && P[i] <= P[i+1] then
    ans += 1
  elsif P[i+1] < P[i] && P[i] <= P[i-1] then
    ans += 1
  end
}

puts ans
