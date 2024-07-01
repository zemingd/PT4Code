S = gets.chomp.split("")
T = gets.chomp.split("")
count = 0
3.times do |i|
  count += 1 if S[i] == T[i]
end
puts count
