N, K = gets.chomp.split(" ").map(&:to_i);
S = gets.chomp

print("#{S[0..K]}#{S[K].downcase}#{S[K..N]}")
