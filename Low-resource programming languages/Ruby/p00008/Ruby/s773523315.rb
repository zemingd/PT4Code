# coding: utf-8

n = gets.to_i
ans_k,ans_r = 0,0

for k in 0..18
  for r in 0..18
    if (n ==  k + r)
      ans_k += 1
      ans_r += 1
    end
  end
end

puts  ans_k * ans_r

