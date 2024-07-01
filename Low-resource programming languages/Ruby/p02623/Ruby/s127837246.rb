inputs = readlines
N,M,k = inputs[0].chomp.split(' ').map(&:to_i)
Ai = inputs[1].chomp.split(' ').map(&:to_i)
Bi = inputs[2].chomp.split(' ').map(&:to_i)

count = 0
while 0 < k do
  if (Ai.empty? && Bi.empty?)
    break
  elsif Bi.empty?
    k -= Ai.shift
    count += 1
  elsif Ai.empty?
    k -= Bi.shift
    count += 1
  elsif (Ai[0] > k && Bi[0] > k)
    break
  elsif Ai[0] <= Bi[0] && Ai[0] < k
    k -= Ai.shift
    count += 1
  elsif Ai[0] > Bi[0] && Bi[0] < k
    k -= Bi.shift
    count += 1
  end
end

puts count