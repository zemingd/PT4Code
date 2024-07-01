N,K = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp.split("")

si = "9"
indexs = []
j = 0

(0..N-1).each do |i|
  if si != S[i]
    si = S[i]
    indexs[j] = i
    j += 1
  end
end

i = 0
sum = 0
maxsum = 0

if S[0] == "0"
  if indexs[K*2].nil? then
    maxsum = N
  else
    maxsum = indexs[K*2]
  end
  i += 1
end

while i < indexs.count
  if indexs[i+(K*2)+1].nil? then
    sum = N - indexs[i]
  else
    sum = indexs[i+(K*2)+1] - indexs[i]
  end

  if maxsum < sum
    maxsum = sum
  elsif sum == 0
    break
  end

  i += 2
end

puts maxsum