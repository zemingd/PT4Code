N = gets.to_i
words = []
N.times do
  words << gets.chomp
end
for i in 0..N-2
  if words[i][words[i].length-1] != words[i+1][0] then puts "No" ; exit end
  for j in 0...N
    if words[i] == words[j] && i != j then puts "No" ; exit end
  end
end
puts "Yes"
