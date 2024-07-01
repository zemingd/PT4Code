N,K = gets.split.map(&:to_i)
s = gets.strip

if K == 1
  puts s[0].downcase + s[1,N]
elsif K == N
  puts s[1,-2] + s[N-1].downcase
else
  puts s[0,K-1] + s[K-1].downcase + s[K,N]
end
