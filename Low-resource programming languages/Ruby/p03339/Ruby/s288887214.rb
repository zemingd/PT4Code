N, S = gets.to_i, gets.chomp
num = S[1..-1].count("E")
min = num

1.upto(N-1) do |pos|
  num -= 1 if S[pos] == "E"
  num += 1 if S[pos-1] == "W"
  min = num if num < min
end

puts min