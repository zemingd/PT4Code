A,B,C = gets.split.map(&:to_i).sort
puts ((A == B) ^ (B == C)) ? "YES" : "NO"

