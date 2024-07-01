h,w = gets.split.map(&:to_i)
s_ary,hs,ws= [],[],[]
 
h.times do |i|
  s_ary[i] = gets.chars.map{|s| s=="#"}
  hs[i],ws[i] = [],[]
end
cnt = 0
 
 
h.times do |i|
  cnt = 0
  w.times do |j|
    if s_ary[i][j] || w == j+1
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
 
w.times do |i|
  cnt = 0
  h.times do |j|
    if s_ary[j][i] || j >= h-1
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
