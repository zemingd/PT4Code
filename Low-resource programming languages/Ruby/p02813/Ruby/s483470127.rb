a_number = gets.to_i
p_array = gets.strip.split.map(&:to_i)
q_array = gets.strip.split.map(&:to_i)


perm = Array(1..a_number).permutation.to_a
p_n = 0
q_n = 0
n = 1
perm.each do |p|
  if p == p_array
    p_n += n
  end
   if p == q_array
    q_n += n
  end
  n+=1
end
puts (p_n - q_n).abs
  

