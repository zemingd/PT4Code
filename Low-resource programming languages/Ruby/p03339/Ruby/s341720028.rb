N = gets.to_i
ary = gets.chomp.chars
cnt = N
N.times do |i|
    west = i == 0 ? 0 : ary[0..i-1].count('W')
    east = i == N-1 ? 0 : ary[i+1..N-1].count('E')
    cnt = [cnt, west + east].min
end
puts cnt