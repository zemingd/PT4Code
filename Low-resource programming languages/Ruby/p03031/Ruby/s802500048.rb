N, M = gets.chomp.split(" ").map(&:to_i)
S = Array.new
M.times do
    S << gets.chomp.split(" ").map(&:to_i)[1..-1]
end
P = gets.chomp.split(" ").map(&:to_i)
answer = 0
for i in 0..2**N-1
    bin = format("%0#{N}b", i)
    all_on = true
    S.each_with_index do |s, idx|
        if s.map{|x| bin[x-1]}.count("1") % 2 != P[idx]
            all_on = false
            break
        end
    end
    answer += 1 if all_on
end
puts answer