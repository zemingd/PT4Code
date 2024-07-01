S = gets.chomp
K = gets.chomp.to_i

if S.slice(0, K).include?("1") then
  puts 1
  exit
end

s = S.gsub(/1/, "")

puts s == "" ? 1 : s[0]
