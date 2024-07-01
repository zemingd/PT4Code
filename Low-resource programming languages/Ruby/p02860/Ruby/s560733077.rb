N = gets.chomp.to_i
S = gets.chomp
if S.length % 2 == 1
  puts "No"
  return
end
if S[0..(S.length / 2) - 1] == S[(S.length / 2)..S.length - 1]
  puts "Yes"
else
  puts "No"
end
