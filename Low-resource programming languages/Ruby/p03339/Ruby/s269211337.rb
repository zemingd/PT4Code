N = gets.to_i
S = gets.chomp
cnt = N
N.times do |i|
    west = i == 0 ? 0 : S[0..i-1].count('W')
    east = i == N-1 ? 0 : S[i+1..N-1].count('E')
    cnt = [cnt, west + east].min
end
puts cnt