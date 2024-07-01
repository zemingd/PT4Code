N, Q = gets.chomp.split().map(&:to_i)
S = gets.chomp.split('')
S_hash = {}

(N-1).times do |i|
  if S[i] == 'A' && S[i+1] == 'C'
    S_hash[i.to_s] = 1
  end
end

Q.times do
  s, f = gets.chomp.split().map(&:to_i)
  s -= 1
  f -= 2
  ans = 0
  [*s..f].each do |i|
    next unless S_hash.has_key?(i.to_s)
    ans +=1
  end
  puts ans
end
