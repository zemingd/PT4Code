n,q = gets.strip.split.map(&:to_i)
s = gets.chomp.to_s
#初めに全てACの位置を調べておく。
shirabe = []
i = 0
while i < s.size-1 do
  if s[i] == "A" && s[i+1] == "C"
    shirabe << i
  end
  i += 1
end
q.times do
  l,r = gets.strip.split.map(&:to_i)
  puts shirabe.count{|x| l-1<=x && x<=r-2}
end