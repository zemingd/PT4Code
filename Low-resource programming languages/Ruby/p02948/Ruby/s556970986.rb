n,m=gets.split.map &:to_i
ab=$<.map {|s|s.split.map &:to_i}
ab.sort_by! do
  [ab[0],ab[1]]
end
1.upto(n) do |i|
  break unless ab[-i]
  if ab[-i][0]+i-1>m
    ab.delete_at(-i)
  end
end
ans=0
ab.each do |s|
  ans+=s[1]
end
p ans