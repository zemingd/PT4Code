S = gets.chomp.split("")
T = gets.chomp.split("")

cnt = 0
0.upto(2) do |n|
  if S[n] == T[n]
    cnt += 1
  end
end

puts cnt