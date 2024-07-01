N = gets.to_i
S = gets.strip

puts  S.split('').chunk(&:itself).size