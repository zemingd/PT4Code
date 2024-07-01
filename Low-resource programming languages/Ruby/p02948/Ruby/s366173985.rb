n,m=gets.split.map &:to_i
ab=$<.map {|s|s.split.map &:to_i}
ab.sort_by! do |s|
  [s[1],s[0]]
end
1.upto(n) do |i|
  break unless ab[-i]
  while ab[-i][0]+i-1>m do
    ab.delete_at(-i)
    break unless ab[-i]
  end
end
ans=0
ab.each do |s|
  ans+=s[1]
end
p ans