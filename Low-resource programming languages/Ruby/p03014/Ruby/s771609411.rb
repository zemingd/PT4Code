h,w = gets.split.map(&:to_i)
s_ary,hs,ws= [],[],[]

h.times do |i|
  s_ary[i] =  gets.chomp.split("")
  hs[i],ws[i] = [],[]
end
s_ary[h] = []
hs[h] = []
cnt = 0


h.times do |i|
  (w+1).times do |j|
    if s_ary[i][j]=="#" || s_ary[i][j].nil?
      ws[i][j] = 0
      (1..cnt).each do |k|
        ws[i][j-k] = cnt
      end
      cnt = 0
    else
      cnt += 1
    end
  end
end

cnt = 0
w.times do |i|
  (h+1).times do |j|
    if s_ary[j][i].nil?|| s_ary[j][i] == "#"
      hs[j][i] = 0
      (1..cnt).each do |k|
        hs[j-k][i] = cnt
      end
      cnt = 0
    else
      cnt += 1
    end
  end
end
result = 0
h.times do |i|
  w.times do |j|
    result = hs[i][j]+ws[i][j]-1 if hs[i][j]+ws[i][j]-1>result
  end
end

puts result