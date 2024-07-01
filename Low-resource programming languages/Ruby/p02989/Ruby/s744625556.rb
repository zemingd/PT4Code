def main
  n = gets.chomp.to_i
  difficulty_table = gets.chomp.split(' ').map(&:to_i)
  return 0 if n.odd? 
  
  difficulty_table.sort!
  lower_limit = difficulty_table[n/2-1]
  upper_limit = difficulty_table[n/2]
  return 0 if upper_limit == lower_limit
  
  answer = upper_limit - lower_limit
  answer
end

puts main