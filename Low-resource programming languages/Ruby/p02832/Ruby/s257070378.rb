N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

ans = 0
t = 1
(0...N).each{|i|
  if A[i] == t then
    t += 1
  else
    ans += 1
  end
}

ans = -1 if ans == N
puts ans
