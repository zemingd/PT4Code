S = gets
ans = 1000

(S.length - 2).times do |i|
num = (753 - (S[i, 3].to_i)).abs
  if ans > num
    ans = num
  end
end

puts ans