n = gets.to_i
S = gets.chomp.to_s

if S.include?("P") && S.include?("W") && S.include?("G") && S.include?("Y")
  puts "Four"
else
  puts "Three"
end