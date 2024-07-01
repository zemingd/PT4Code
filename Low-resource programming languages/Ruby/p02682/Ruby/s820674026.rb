A, B, C, K = gets.split(" ").map!{|i| i.to_i}
=begin
puts "A：" + A.to_s
puts "B：" + B.to_s
puts "C：" + C.to_s
puts "K：" + K.to_s
=end

if K >= A
  k_rest =  K - A
  a_used = A
  #puts "A使用枚数：" + a_used.to_s #Aを使った枚数
  #puts "残りK枚数：" + k_rest.to_s #残るKの枚数
  a_point = a_used.to_i * 1
  #puts "A使用時のポイント：" + a_point.to_s
else
  k_rest = 0
  a_used = K
  #puts "A使用枚数：" + a_used.to_s #Aを使った枚数
  #puts "残りK枚数：" + k_rest.to_s #残るKの枚数
  a_point = a_used.to_i * 1
  #puts "A使用時のポイント：" + a_point.to_s
end

if k_rest >= 1
  if k_rest >= B
    k_rest =  k_rest - B
    b_used = B
    #puts "B使用枚数：" + b_used.to_s #Bを使った枚数
    #puts "残りK枚数：" + k_rest.to_s #残るKの枚数
    b_point = b_used.to_i * 0
    #puts "B使用時のポイント：" + b_point.to_s
  else
    b_used = k_rest
    k_rest = 0
    #puts "B使用枚数：" + b_used.to_s #Bを使った枚数
    #puts "残りK枚数：" + k_rest.to_s #残るKの枚数
    b_point = b_used.to_i * 1
    #puts "B使用時のポイント：" + b_point.to_s
  end
end

if k_rest >= 1
  if k_rest >= C
    k_rest =  k_rest - C
    c_used = C
    #puts "C使用枚数：" + c_used.to_s #Cを使った枚数
    #puts "残りK枚数：" + k_rest.to_s #残るKの枚数
    c_point = c_used.to_i * -1
    #puts "C使用時のポイント：" + c_point.to_s
  else
    c_used = k_rest
    k_rest = 0
    #puts "C使用枚数：" + c_used.to_s #Cを使った枚数
    #puts "残りK枚数：" + k_rest.to_s #残るKの枚数
    c_point = c_used.to_i * -1
    #puts "C使用時のポイント：" + c_point.to_s
  end
end

ans = a_point.to_i + b_point.to_i + c_point.to_i
puts ans

