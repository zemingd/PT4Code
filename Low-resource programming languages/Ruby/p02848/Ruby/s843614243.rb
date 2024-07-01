N = gets.to_i
S = gets.chomp

S.each_char.with_index do |s,i|
    S[i] =  (65 + (s.ord + N - 65) % 26).chr
end

puts S