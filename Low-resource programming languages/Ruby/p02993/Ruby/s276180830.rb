S = gets.chomp.split("").map(&:to_i)
puts S

if S[0] == S[1] || S[1] == S[2] || S[2] == S[3]
  puts "Bad"
else
  puts "Good"
end
