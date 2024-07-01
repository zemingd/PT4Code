N, K = gets.split.map(&:to_i)
ps = gets.split.map(&:to_f)

def kitaichi(f)
  result = (f * (f + 1) / 2) / f
  return result
end

ans = 0
# for i in 0..(N - K) do
#   tmp = 0
#   for j in i...(i + K) do
#     tmp += kitaichi(ps[j])
#   end
#   ans = [ans, tmp].max
# end

for i in 0..(N - K) do
  tmp = 0
  ps[i, K].each do |e|
    tmp += kitaichi(e)
  end
  ans = [ans, tmp].max
end

puts ans
