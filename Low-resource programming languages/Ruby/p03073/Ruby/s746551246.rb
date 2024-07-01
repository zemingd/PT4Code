S = gets.chomp.chars.map &:to_i
N = S.size

bit = 0
count = 0
N.times do |i|
  if bit == S[i]
    count += 1
  end
  bit = 1 - bit
end

puts [count, N - count].min
