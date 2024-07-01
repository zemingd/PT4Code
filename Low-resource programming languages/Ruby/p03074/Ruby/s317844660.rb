require 'pp'

N,K = readline.chomp.split.map(&:to_i)
S = readline.chomp

idx_10 = []
S.each_char.with_index do |c,idx|
  idx_10 << idx if c == '1' and S[idx+1] == '0'
end
idx_10 << S.size-1 if S[-1] == '1'

# pp idx_10

idx_01 = []
idx_01 << 0
S.each_char.with_index do |c,idx|
  next if idx == 0
  idx_01 << idx if c == '1' and S[idx-1] == '0'
end

# pp idx_01

offset = (S[0]=='0' ? K-1 : K)
max = 0
idx_01.each_with_index do |b,idx|
  e = (idx_10[idx+offset] or idx_10.last)
  l = e-b+1
  max = l if l > max
end
  
puts max
