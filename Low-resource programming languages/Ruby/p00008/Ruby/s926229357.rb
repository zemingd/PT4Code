# coding: utf-8

while n = gets do
  ans_k,ans_r = 0,0
  n = n.to_i
  for k in 1..18
    for r in 1..18
      if (n ==  k + r)
        ans_k += 1
        ans_r += 1
      end
    end
  end
  puts  ans_k * ans_r
end

