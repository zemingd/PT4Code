N, Q = gets.split.map(&:to_i)
memo = Array.new(N, 0)
s = gets.chomp.split('')

cnt = 0
1.upto(N) do |i|
  if s[i-1] == "A" && s[i] == "C"
    cnt += 1
  end
  memo[i] = cnt
end
# p memo
Q.times do
  s, t = gets.split.map(&:to_i)
  puts memo[t-1] - memo[s-1]
end
