N = gets
S = gets.chomp!

remain = S.length

# A = 65 Z = 90

ans = ''
ascii = 65

for num in N.to_i .. remain - 1 do
  if(S[num] == 'Z')
    ans += S[num]
    N.to_i.times do
    ans += ascii.chr
    ascii += 1
    end
  else
  ans += S[num]
  end
end

p ans