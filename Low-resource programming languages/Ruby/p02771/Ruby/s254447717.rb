A, B, C = gets.chomp.split(" ").map(&:to_i)

if (A == B && A != C) || (A == C && A != B) || (B == C && B != A)
  puts "Yes"
else
  puts "No"
end
