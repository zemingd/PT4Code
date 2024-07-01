N = gets.chomp.to_i
S = gets.chomp.to_s

if S.include?("ABC")
  puts S.count("ABC")
else
  puts 0
end