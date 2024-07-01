S = gets.chomp

N = S.length
# 回文判定
if S != S.reverse
  puts 'No'
  exit
end

# 回文判定2
s2 = S[0...((N-1)/2)]

if s2 != s2.reverse
  puts 'No'
  exit
end

# 回文判定3
s3 = S[(((N+3)/2)-1)...N]
if s3 != s3.reverse 
  puts 'No'
  exit
end

puts 'Yes'
