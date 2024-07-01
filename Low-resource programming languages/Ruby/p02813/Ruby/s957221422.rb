def main
  n = gets.chomp.to_i
  p = gets.chomp.split.map(&:to_i)
  q = gets.chomp.split.map(&:to_i)
  
  array = p.sort
  perm = array.permutation.to_a

  p_idx = perm.index(p)
  q_idx = perm.index(q)

  puts (p_idx - q_idx).abs

end

main

