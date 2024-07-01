N,Q = gets.split.map(&:to_i)
S = gets.chomp * 2

a = [0]
(S).each_char.with_index do |s,i|
  next if i == 0
  a[i] = a[i-1]
  next if S[i] != 'C'
  next if S[i-1] != 'A'
  a[i] += 1
end

Q.times do
  l,r = gets.split.map {|s| s.to_i - 1 }
  l = (l < N*2) ? a[l] : (a[l%N+N]-a[l%N]) * (l/N)
  r = (r < N*2) ? a[r] : (a[r%N+N]-a[r%N]) * (r/N)
  puts r - l
end
