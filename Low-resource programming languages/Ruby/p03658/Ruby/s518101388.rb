N, K = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)

print("#{l.sort{|a, b| b <=> a}.take(K).inject(&:+)}")