p_q_r=gets.chomp.split(" ").map{|a| a.to_i}
index_length=p_q_r.length-1
min=nil
for i in 0..index_length-1
  for j in i+1..index_length
    min=p_q_r[i]+p_q_r[j] if min==nil || p_q_r[i]+p_q_r[j]<min
  end
end
puts min