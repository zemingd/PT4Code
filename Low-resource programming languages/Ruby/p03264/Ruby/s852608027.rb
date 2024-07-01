K = gets.to_i
 
puts (1..K).count(&:even?) * (1..K).count(&:odd?)
