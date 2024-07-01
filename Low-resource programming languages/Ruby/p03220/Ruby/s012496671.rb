gets
t, a = gets.chomp.split.map(&:to_i).map { |i| i * 1000 }
ans=-1
dif=10**20
cnt=0
for i in gets.chomp.split.map(&:to_i) do
  cnt+=1
  if (a-t+i*6).abs<dif then
    dif=(a-t+i*6).abs
    ans=cnt
  end
end
p ans