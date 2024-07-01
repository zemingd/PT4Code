N, L = gets.chomp.split(" ").map(&:to_i)
S = []
N.times do |n|
  S[n] = gets.chomp
end
print("#{S.sort.join}")