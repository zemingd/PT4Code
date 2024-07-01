S=gets.chop
T=gets.chop

idx=Hash.new{|h,k|h[k]=Array.new}
S.chars.each.with_index do |s, i|
  idx[s] << i
end

if T.chars.any?{|t|idx[t].empty?}
  p -1
  exit
end

n = i = 0
T.chars do |t|
  i = idx[t].bsearch{|x|i<=x}
  next if i
  n += 1
  i = idx[t][0]
end
p n*S.size+i+1
