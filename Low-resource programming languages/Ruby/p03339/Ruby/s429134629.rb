N = gets.to_i
S_initial = [0]
S = gets.chomp.split("")

S_0_i = S_initial + S

#初期値
right_E = S_0_i.count("E")
left_W = 0
min_changeDirection = N


(1..N).each do |s_i|
  
  if S_0_i[s_i] == "E"
    right_E -= 1
  end
  
  if S_0_i[s_i - 1] == "W"
    left_W += 1
  end
  
  count_changeDirection = left_W + right_E
  #p "#{s_i}番目ではleft_W=#{left_W},right_E=#{right_E}"
  
  if min_changeDirection > count_changeDirection then
  min_changeDirection = count_changeDirection
  end
end
  
p min_changeDirection