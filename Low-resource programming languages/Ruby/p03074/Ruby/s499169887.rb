N,K=gets.chomp.split.map(&:to_i)
S=gets.chomp.split("")
prev=nil
cnt=0
ss = []
S.each do |s|
  if prev == nil || prev == s
    prev = s
    cnt+=1
    next
  end

  ss << cnt
  cnt = 1
  prev = s
end
ss << cnt

csum = [0]
ss.each_with_index do |s,i|
  csum[i+1] = csum[i] + s
end

if S[0] == '0' && (ss.size+1)/2 <= K || S[0] == '1' && ss.size/2 <= K
    puts N
    exit
end

if S[0] == '0'
  ans=csum[K*2]
  1.step(csum.size-2*K-2,2) do |i|
    ans = csum[i+K*2+1] - csum[i] if csum[i+K*2+1] - csum[i] > ans
  end
else
  ans=csum[K*2+1]
  2.step(csum.size-2*K-2,2) do |i|
    ans = csum[i+K*2+1] - csum[i] if csum[i+K*2+1] - csum[i] > ans
  end
end
puts ans